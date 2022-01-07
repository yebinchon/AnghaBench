
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_string {int s; int length; } ;
struct lha {int end_of_entry; int found_first_header; unsigned char level; unsigned char* method; int directory; int entry_is_compressed; scalar_t__ compsize; int setflag; int mode; int dos_attr; scalar_t__ entry_bytes_remaining; char* format_name; scalar_t__ entry_crc_calculated; scalar_t__ entry_offset; scalar_t__ origsize; scalar_t__ atime_tv_nsec; scalar_t__ atime; scalar_t__ mtime_tv_nsec; scalar_t__ mtime; scalar_t__ birthtime_tv_nsec; scalar_t__ birthtime; struct archive_string gname; struct archive_string uname; scalar_t__ gid; scalar_t__ uid; int * sconv; struct archive_string dirname; struct archive_string filename; int * opt_sconv; scalar_t__ header_size; scalar_t__ entry_unconsumed; scalar_t__ end_of_entry_cleanup; scalar_t__ decompress_init; } ;
struct TYPE_4__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef int signature ;
struct TYPE_3__ {scalar_t__ data; } ;


 int AE_IFDIR ;
 int AE_IFLNK ;
 int AE_IFMT ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 scalar_t__ ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_LHA ;
 int ARCHIVE_WARN ;
 int ATIME_IS_SET ;
 int BIRTHTIME_IS_SET ;
 scalar_t__ ENOMEM ;
 size_t H_LEVEL_OFFSET ;
 int H_METHOD_OFFSET ;
 int H_SIZE ;
 int UNIX_MODE_IS_SET ;
 void* __archive_read_ahead (struct archive_read*,int,int *) ;
 scalar_t__ archive_entry_copy_pathname_l (struct archive_entry*,int ,int ,int *) ;
 scalar_t__ archive_entry_copy_symlink_l (struct archive_entry*,int ,int ,int *) ;
 int archive_entry_set_atime (struct archive_entry*,scalar_t__,scalar_t__) ;
 int archive_entry_set_birthtime (struct archive_entry*,scalar_t__,scalar_t__) ;
 int archive_entry_set_ctime (struct archive_entry*,scalar_t__,scalar_t__) ;
 int archive_entry_set_gid (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_gname (struct archive_entry*,int ) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,scalar_t__,scalar_t__) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_symlink (struct archive_entry*,int *) ;
 int archive_entry_set_uid (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_uname (struct archive_entry*,int ) ;
 int * archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_unset_atime (struct archive_entry*) ;
 int archive_entry_unset_birthtime (struct archive_entry*) ;
 int archive_entry_unset_ctime (struct archive_entry*) ;
 int archive_entry_unset_size (struct archive_entry*) ;
 int archive_set_error (TYPE_2__*,scalar_t__,char*,...) ;
 int archive_string_concat (struct archive_string*,struct archive_string*) ;
 int archive_string_conversion_charset_name (int *) ;
 int archive_string_copy (struct archive_string*,struct archive_string*) ;
 int archive_string_empty (struct archive_string*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ archive_strlen (struct archive_string*) ;
 scalar_t__ errno ;
 scalar_t__ lha_check_header_format (unsigned char const*) ;
 int lha_crc16_init () ;
 int lha_parse_linkname (struct archive_string*,struct archive_string*) ;
 int lha_read_file_header_0 (struct archive_read*,struct lha*) ;
 int lha_read_file_header_1 (struct archive_read*,struct lha*) ;
 int lha_read_file_header_2 (struct archive_read*,struct lha*) ;
 int lha_read_file_header_3 (struct archive_read*,struct lha*) ;
 int lha_replace_path_separator (struct lha*,struct archive_entry*) ;
 int lha_skip_sfx (struct archive_read*) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 int sprintf (char*,char*,unsigned char,unsigned char,unsigned char) ;
 int truncated_error (struct archive_read*) ;

__attribute__((used)) static int
archive_read_format_lha_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 struct archive_string linkname;
 struct archive_string pathname;
 struct lha *lha;
 const unsigned char *p;
 const char *signature;
 int err;

 lha_crc16_init();

 a->archive.archive_format = ARCHIVE_FORMAT_LHA;
 if (a->archive.archive_format_name == ((void*)0))
  a->archive.archive_format_name = "lha";

 lha = (struct lha *)(a->format->data);
 lha->decompress_init = 0;
 lha->end_of_entry = 0;
 lha->end_of_entry_cleanup = 0;
 lha->entry_unconsumed = 0;

 if ((p = __archive_read_ahead(a, H_SIZE, ((void*)0))) == ((void*)0)) {




  signature = __archive_read_ahead(a, sizeof(signature[0]), ((void*)0));
  if (signature == ((void*)0) || signature[0] == 0)
   return (ARCHIVE_EOF);
  return (truncated_error(a));
 }

 signature = (const char *)p;
 if (lha->found_first_header == 0 &&
     signature[0] == 'M' && signature[1] == 'Z') {

  err = lha_skip_sfx(a);
  if (err < ARCHIVE_WARN)
   return (err);

  if ((p = __archive_read_ahead(a, sizeof(*p), ((void*)0))) == ((void*)0))
   return (truncated_error(a));
  signature = (const char *)p;
 }

 if (signature[0] == 0)
  return (ARCHIVE_EOF);




 if (lha_check_header_format(p) != 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Bad LHa file");
  return (ARCHIVE_FATAL);
 }


 lha->found_first_header = 1;

 lha->header_size = 0;
 lha->level = p[H_LEVEL_OFFSET];
 lha->method[0] = p[H_METHOD_OFFSET+1];
 lha->method[1] = p[H_METHOD_OFFSET+2];
 lha->method[2] = p[H_METHOD_OFFSET+3];
 if (memcmp(lha->method, "lhd", 3) == 0)
  lha->directory = 1;
 else
  lha->directory = 0;
 if (memcmp(lha->method, "lh0", 3) == 0 ||
     memcmp(lha->method, "lz4", 3) == 0)
  lha->entry_is_compressed = 0;
 else
  lha->entry_is_compressed = 1;

 lha->compsize = 0;
 lha->origsize = 0;
 lha->setflag = 0;
 lha->birthtime = 0;
 lha->birthtime_tv_nsec = 0;
 lha->mtime = 0;
 lha->mtime_tv_nsec = 0;
 lha->atime = 0;
 lha->atime_tv_nsec = 0;
 lha->mode = (lha->directory)? 0777 : 0666;
 lha->uid = 0;
 lha->gid = 0;
 archive_string_empty(&lha->dirname);
 archive_string_empty(&lha->filename);
 lha->dos_attr = 0;
 if (lha->opt_sconv != ((void*)0))
  lha->sconv = lha->opt_sconv;
 else
  lha->sconv = ((void*)0);

 switch (p[H_LEVEL_OFFSET]) {
 case 0:
  err = lha_read_file_header_0(a, lha);
  break;
 case 1:
  err = lha_read_file_header_1(a, lha);
  break;
 case 2:
  err = lha_read_file_header_2(a, lha);
  break;
 case 3:
  err = lha_read_file_header_3(a, lha);
  break;
 default:
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Unsupported LHa header level %d", p[H_LEVEL_OFFSET]);
  err = ARCHIVE_FATAL;
  break;
 }
 if (err < ARCHIVE_WARN)
  return (err);


 if (!lha->directory && archive_strlen(&lha->filename) == 0)

  return (truncated_error(a));




 archive_string_concat(&lha->dirname, &lha->filename);
 archive_string_init(&pathname);
 archive_string_init(&linkname);
 archive_string_copy(&pathname, &lha->dirname);

 if ((lha->mode & AE_IFMT) == AE_IFLNK) {



  if (!lha_parse_linkname(&linkname, &pathname)) {

   archive_set_error(&a->archive,
           ARCHIVE_ERRNO_FILE_FORMAT,
       "Unknown symlink-name");
   archive_string_free(&pathname);
   archive_string_free(&linkname);
   return (ARCHIVE_FAILED);
  }
 } else {




  lha->mode = (lha->mode & ~AE_IFMT) |
      ((lha->directory)? AE_IFDIR: AE_IFREG);
 }
 if ((lha->setflag & UNIX_MODE_IS_SET) == 0 &&
     (lha->dos_attr & 1) != 0)
  lha->mode &= ~(0222);




 if (archive_entry_copy_pathname_l(entry, pathname.s,
     pathname.length, lha->sconv) != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Pathname");
   return (ARCHIVE_FATAL);
  }
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Pathname cannot be converted "
      "from %s to current locale.",
      archive_string_conversion_charset_name(lha->sconv));
  err = ARCHIVE_WARN;
 }
 archive_string_free(&pathname);
 if (archive_strlen(&linkname) > 0) {
  if (archive_entry_copy_symlink_l(entry, linkname.s,
      linkname.length, lha->sconv) != 0) {
   if (errno == ENOMEM) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for Linkname");
    return (ARCHIVE_FATAL);
   }
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Linkname cannot be converted "
       "from %s to current locale.",
       archive_string_conversion_charset_name(lha->sconv));
   err = ARCHIVE_WARN;
  }
 } else
  archive_entry_set_symlink(entry, ((void*)0));
 archive_string_free(&linkname);





 if (p[H_LEVEL_OFFSET] == 0)
  lha_replace_path_separator(lha, entry);

 archive_entry_set_mode(entry, lha->mode);
 archive_entry_set_uid(entry, lha->uid);
 archive_entry_set_gid(entry, lha->gid);
 if (archive_strlen(&lha->uname) > 0)
  archive_entry_set_uname(entry, lha->uname.s);
 if (archive_strlen(&lha->gname) > 0)
  archive_entry_set_gname(entry, lha->gname.s);
 if (lha->setflag & BIRTHTIME_IS_SET) {
  archive_entry_set_birthtime(entry, lha->birthtime,
      lha->birthtime_tv_nsec);
  archive_entry_set_ctime(entry, lha->birthtime,
      lha->birthtime_tv_nsec);
 } else {
  archive_entry_unset_birthtime(entry);
  archive_entry_unset_ctime(entry);
 }
 archive_entry_set_mtime(entry, lha->mtime, lha->mtime_tv_nsec);
 if (lha->setflag & ATIME_IS_SET)
  archive_entry_set_atime(entry, lha->atime,
      lha->atime_tv_nsec);
 else
  archive_entry_unset_atime(entry);
 if (lha->directory || archive_entry_symlink(entry) != ((void*)0))
  archive_entry_unset_size(entry);
 else
  archive_entry_set_size(entry, lha->origsize);




 lha->entry_bytes_remaining = lha->compsize;
 if (lha->entry_bytes_remaining < 0) {
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Invalid LHa entry size");
  return (ARCHIVE_FATAL);
 }
 lha->entry_offset = 0;
 lha->entry_crc_calculated = 0;




 if (lha->directory || lha->compsize == 0)
  lha->end_of_entry = 1;

 sprintf(lha->format_name, "lha -%c%c%c-",
     lha->method[0], lha->method[1], lha->method[2]);
 a->archive.archive_format_name = lha->format_name;

 return (err);
}
