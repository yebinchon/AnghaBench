
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {int init_default_conversion; int (* read_header ) (struct archive_read*,struct cpio*,struct archive_entry*,size_t*,size_t*) ;int entry_bytes_remaining; scalar_t__ entry_offset; struct archive_string_conv* sconv_default; struct archive_string_conv* opt_sconv; } ;
struct archive_string_conv {int dummy; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 scalar_t__ AE_IFLNK ;
 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ ENOMEM ;
 void* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int archive_clear_error (int *) ;
 scalar_t__ archive_entry_copy_pathname_l (struct archive_entry*,char const*,size_t,struct archive_string_conv*) ;
 scalar_t__ archive_entry_copy_symlink_l (struct archive_entry*,char const*,size_t,struct archive_string_conv*) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_set_error (int *,scalar_t__,char*,...) ;
 int archive_string_conversion_charset_name (struct archive_string_conv*) ;
 struct archive_string_conv* archive_string_default_conversion_for_read (int *) ;
 scalar_t__ errno ;
 scalar_t__ record_hardlink (struct archive_read*,struct cpio*,struct archive_entry*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int stub1 (struct archive_read*,struct cpio*,struct archive_entry*,size_t*,size_t*) ;

__attribute__((used)) static int
archive_read_format_cpio_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 struct cpio *cpio;
 const void *h, *hl;
 struct archive_string_conv *sconv;
 size_t namelength;
 size_t name_pad;
 int r;

 cpio = (struct cpio *)(a->format->data);
 sconv = cpio->opt_sconv;
 if (sconv == ((void*)0)) {
  if (!cpio->init_default_conversion) {
   cpio->sconv_default =
       archive_string_default_conversion_for_read(
         &(a->archive));
   cpio->init_default_conversion = 1;
  }
  sconv = cpio->sconv_default;
 }

 r = (cpio->read_header(a, cpio, entry, &namelength, &name_pad));

 if (r < ARCHIVE_WARN)
  return (r);


 h = __archive_read_ahead(a, namelength + name_pad, ((void*)0));
 if (h == ((void*)0))
     return (ARCHIVE_FATAL);
 if (archive_entry_copy_pathname_l(entry,
     (const char *)h, namelength, sconv) != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Pathname");
   return (ARCHIVE_FATAL);
  }
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Pathname can't be converted from %s to current locale.",
      archive_string_conversion_charset_name(sconv));
  r = ARCHIVE_WARN;
 }
 cpio->entry_offset = 0;

 __archive_read_consume(a, namelength + name_pad);


 if (archive_entry_filetype(entry) == AE_IFLNK) {
  if (cpio->entry_bytes_remaining > 1024 * 1024) {
   archive_set_error(&a->archive, ENOMEM,
       "Rejecting malformed cpio archive: symlink contents exceed 1 megabyte");
   return (ARCHIVE_FATAL);
  }
  hl = __archive_read_ahead(a,
   (size_t)cpio->entry_bytes_remaining, ((void*)0));
  if (hl == ((void*)0))
   return (ARCHIVE_FATAL);
  if (archive_entry_copy_symlink_l(entry, (const char *)hl,
      (size_t)cpio->entry_bytes_remaining, sconv) != 0) {
   if (errno == ENOMEM) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for Linkname");
    return (ARCHIVE_FATAL);
   }
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Linkname can't be converted from %s to "
       "current locale.",
       archive_string_conversion_charset_name(sconv));
   r = ARCHIVE_WARN;
  }
  __archive_read_consume(a, cpio->entry_bytes_remaining);
  cpio->entry_bytes_remaining = 0;
 }







 if (namelength == 11 && strncmp((const char *)h, "TRAILER!!!",
     11) == 0) {

  archive_clear_error(&a->archive);
  return (ARCHIVE_EOF);
 }


 if (record_hardlink(a, cpio, entry) != ARCHIVE_OK) {
  return (ARCHIVE_FATAL);
 }

 return (r);
}
