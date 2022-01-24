#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rar {scalar_t__ has_encrypted_entries; int found_first_header; unsigned long main_flags; char encryptver; int /*<<< orphan*/  reserved2; int /*<<< orphan*/  reserved1; } ;
struct TYPE_4__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_RAR ; 
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ; 
 int ARCHIVE_WARN ; 
#define  AV_HEAD 137 
#define  COMM_HEAD 136 
#define  ENDARC_HEAD 135 
#define  FILE_HEAD 134 
 unsigned int HD_ADD_SIZE_PRESENT ; 
#define  MAIN_HEAD 133 
#define  MARK_HEAD 132 
 int MHD_ENCRYPTVER ; 
 int MHD_PASSWORD ; 
#define  NEWSUB_HEAD 131 
#define  PROTECT_HEAD 130 
 char* RAR_SIGNATURE ; 
#define  SIGN_HEAD 129 
#define  SUB_HEAD 128 
 void* FUNC0 (struct archive_read*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int) ; 
 unsigned long FUNC4 (char const*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC7 (unsigned long,unsigned char const*,unsigned int) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC10 (struct archive_read*,struct archive_entry*,char) ; 
 int FUNC11 (struct archive_read*) ; 

__attribute__((used)) static int
FUNC12(struct archive_read *a,
                                    struct archive_entry *entry)
{
  const void *h;
  const char *p;
  struct rar *rar;
  size_t skip;
  char head_type;
  int ret;
  unsigned flags;
  unsigned long crc32_expected;

  a->archive.archive_format = ARCHIVE_FORMAT_RAR;
  if (a->archive.archive_format_name == NULL)
    a->archive.archive_format_name = "RAR";

  rar = (struct rar *)(a->format->data);

  /*
   * It should be sufficient to call archive_read_next_header() for
   * a reader to determine if an entry is encrypted or not. If the
   * encryption of an entry is only detectable when calling
   * archive_read_data(), so be it. We'll do the same check there
   * as well.
   */
  if (rar->has_encrypted_entries == ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW) {
	  rar->has_encrypted_entries = 0;
  }

  /* RAR files can be generated without EOF headers, so return ARCHIVE_EOF if
  * this fails.
  */
  if ((h = FUNC0(a, 7, NULL)) == NULL)
    return (ARCHIVE_EOF);

  p = h;
  if (rar->found_first_header == 0 &&
     ((p[0] == 'M' && p[1] == 'Z') || FUNC8(p, "\x7F\x45LF", 4) == 0)) {
    /* This is an executable ? Must be self-extracting... */
    ret = FUNC11(a);
    if (ret < ARCHIVE_WARN)
      return (ret);
  }
  rar->found_first_header = 1;

  while (1)
  {
    unsigned long crc32_val;

    if ((h = FUNC0(a, 7, NULL)) == NULL)
      return (ARCHIVE_FATAL);
    p = h;

    head_type = p[2];
    switch(head_type)
    {
    case MARK_HEAD:
      if (FUNC8(p, RAR_SIGNATURE, 7) != 0) {
        FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
          "Invalid marker header");
        return (ARCHIVE_FATAL);
      }
      FUNC1(a, 7);
      break;

    case MAIN_HEAD:
      rar->main_flags = FUNC4(p + 3);
      skip = FUNC4(p + 5);
      if (skip < 7 + sizeof(rar->reserved1) + sizeof(rar->reserved2)) {
        FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
          "Invalid header size");
        return (ARCHIVE_FATAL);
      }
      if ((h = FUNC0(a, skip, NULL)) == NULL)
        return (ARCHIVE_FATAL);
      p = h;
      FUNC9(rar->reserved1, p + 7, sizeof(rar->reserved1));
      FUNC9(rar->reserved2, p + 7 + sizeof(rar->reserved1),
             sizeof(rar->reserved2));
      if (rar->main_flags & MHD_ENCRYPTVER) {
        if (skip < 7 + sizeof(rar->reserved1) + sizeof(rar->reserved2)+1) {
          FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
            "Invalid header size");
          return (ARCHIVE_FATAL);
        }
        rar->encryptver = *(p + 7 + sizeof(rar->reserved1) +
                            sizeof(rar->reserved2));
      }

      /* Main header is password encrypted, so we cannot read any
         file names or any other info about files from the header. */
      if (rar->main_flags & MHD_PASSWORD)
      {
        FUNC3(entry, 1);
        FUNC2(entry, 1);
        rar->has_encrypted_entries = 1;
         FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                          "RAR encryption support unavailable.");
        return (ARCHIVE_FATAL);
      }

      crc32_val = FUNC7(0, (const unsigned char *)p + 2, (unsigned)skip - 2);
      if ((crc32_val & 0xffff) != FUNC4(p)) {
        FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
          "Header CRC error");
        return (ARCHIVE_FATAL);
      }
      FUNC1(a, skip);
      break;

    case FILE_HEAD:
      return FUNC10(a, entry, head_type);

    case COMM_HEAD:
    case AV_HEAD:
    case SUB_HEAD:
    case PROTECT_HEAD:
    case SIGN_HEAD:
    case ENDARC_HEAD:
      flags = FUNC4(p + 3);
      skip = FUNC4(p + 5);
      if (skip < 7) {
        FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
          "Invalid header size too small");
        return (ARCHIVE_FATAL);
      }
      if (flags & HD_ADD_SIZE_PRESENT)
      {
        if (skip < 7 + 4) {
          FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
            "Invalid header size too small");
          return (ARCHIVE_FATAL);
        }
        if ((h = FUNC0(a, skip, NULL)) == NULL)
          return (ARCHIVE_FATAL);
        p = h;
        skip += FUNC5(p + 7);
      }

      /* Skip over the 2-byte CRC at the beginning of the header. */
      crc32_expected = FUNC4(p);
      FUNC1(a, 2);
      skip -= 2;

      /* Skim the entire header and compute the CRC. */
      crc32_val = 0;
      while (skip > 0) {
	      size_t to_read = skip;
	      ssize_t did_read;
	      if (to_read > 32 * 1024) {
		      to_read = 32 * 1024;
	      }
	      if ((h = FUNC0(a, to_read, &did_read)) == NULL) {
		      return (ARCHIVE_FATAL);
	      }
	      p = h;
	      crc32_val = FUNC7(crc32_val, (const unsigned char *)p, (unsigned)did_read);
	      FUNC1(a, did_read);
	      skip -= did_read;
      }
      if ((crc32_val & 0xffff) != crc32_expected) {
	      FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		  "Header CRC error");
	      return (ARCHIVE_FATAL);
      }
      if (head_type == ENDARC_HEAD)
	      return (ARCHIVE_EOF);
      break;

    case NEWSUB_HEAD:
      if ((ret = FUNC10(a, entry, head_type)) < ARCHIVE_WARN)
        return ret;
      break;

    default:
      FUNC6(&a->archive,  ARCHIVE_ERRNO_FILE_FORMAT,
                        "Bad RAR file");
      return (ARCHIVE_FATAL);
    }
  }
}