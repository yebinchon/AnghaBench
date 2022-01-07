
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ archive_format; char* archive_format_name; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;
struct ar {char* strtab; size_t strtab_size; scalar_t__ entry_bytes_remaining; } ;
typedef scalar_t__ int64_t ;


 int AE_IFREG ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_FORMAT_AR ;
 scalar_t__ ARCHIVE_FORMAT_AR_BSD ;
 scalar_t__ ARCHIVE_FORMAT_AR_GNU ;
 int ARCHIVE_OK ;
 int AR_fmag_offset ;
 int AR_name_offset ;
 int AR_name_size ;
 int AR_size_offset ;
 int AR_size_size ;
 int EINVAL ;
 int ENOMEM ;
 int SIZE_MAX ;
 void* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int ar_atol10 (char const*,int) ;
 int ar_parse_common_header (struct ar*,struct archive_entry*,char const*) ;
 int ar_parse_gnu_filename_table (struct archive_read*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,void const*,size_t) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strncpy (char*,void const*,size_t) ;

__attribute__((used)) static int
_ar_read_header(struct archive_read *a, struct archive_entry *entry,
 struct ar *ar, const char *h, size_t *unconsumed)
{
 char filename[AR_name_size + 1];
 uint64_t number;
 size_t bsd_name_length, entry_size;
 char *p, *st;
 const void *b;
 int r;


 if (strncmp(h + AR_fmag_offset, "`\n", 2) != 0) {
  archive_set_error(&a->archive, EINVAL,
      "Incorrect file header signature");
  return (ARCHIVE_FATAL);
 }


 strncpy(filename, h + AR_name_offset, AR_name_size);
 filename[AR_name_size] = '\0';




 if (a->archive.archive_format == ARCHIVE_FORMAT_AR) {







  if (strncmp(filename, "#1/", 3) == 0)
   a->archive.archive_format = ARCHIVE_FORMAT_AR_BSD;
  else if (strchr(filename, '/') != ((void*)0))
   a->archive.archive_format = ARCHIVE_FORMAT_AR_GNU;
  else if (strncmp(filename, "__.SYMDEF", 9) == 0)
   a->archive.archive_format = ARCHIVE_FORMAT_AR_BSD;





 }


 if (a->archive.archive_format == ARCHIVE_FORMAT_AR_GNU)
  a->archive.archive_format_name = "ar (GNU/SVR4)";
 else if (a->archive.archive_format == ARCHIVE_FORMAT_AR_BSD)
  a->archive.archive_format_name = "ar (BSD)";
 else
  a->archive.archive_format_name = "ar";
 p = filename + AR_name_size - 1;
 while (p >= filename && *p == ' ') {
  *p = '\0';
  p--;
 }
 if (filename[0] != '/' && p > filename && *p == '/') {
  *p = '\0';
 }

 if (p < filename) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Found entry with empty filename");
  return (ARCHIVE_FATAL);
 }





 if (strcmp(filename, "//") == 0) {

  ar_parse_common_header(ar, entry, h);
  archive_entry_copy_pathname(entry, filename);
  archive_entry_set_filetype(entry, AE_IFREG);

  number = ar_atol10(h + AR_size_offset, AR_size_size);
  if (number > SIZE_MAX || number > 1024 * 1024 * 1024) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Filename table too large");
   return (ARCHIVE_FATAL);
  }
  entry_size = (size_t)number;
  if (entry_size == 0) {
   archive_set_error(&a->archive, EINVAL,
       "Invalid string table");
   return (ARCHIVE_FATAL);
  }
  if (ar->strtab != ((void*)0)) {
   archive_set_error(&a->archive, EINVAL,
       "More than one string tables exist");
   return (ARCHIVE_FATAL);
  }


  st = malloc(entry_size);
  if (st == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate filename table buffer");
   return (ARCHIVE_FATAL);
  }
  ar->strtab = st;
  ar->strtab_size = entry_size;

  if (*unconsumed) {
   __archive_read_consume(a, *unconsumed);
   *unconsumed = 0;
  }

  if ((b = __archive_read_ahead(a, entry_size, ((void*)0))) == ((void*)0))
   return (ARCHIVE_FATAL);
  memcpy(st, b, entry_size);
  __archive_read_consume(a, entry_size);

  ar->entry_bytes_remaining = 0;
  archive_entry_set_size(entry, ar->entry_bytes_remaining);


  return (ar_parse_gnu_filename_table(a));
 }







 if (filename[0] == '/' && filename[1] >= '0' && filename[1] <= '9') {
  number = ar_atol10(h + AR_name_offset + 1, AR_name_size - 1);




  if (ar->strtab == ((void*)0) || number >= ar->strtab_size) {
   archive_set_error(&a->archive, EINVAL,
       "Can't find long filename for GNU/SVR4 archive entry");
   archive_entry_copy_pathname(entry, filename);

   ar_parse_common_header(ar, entry, h);
   return (ARCHIVE_FATAL);
  }

  archive_entry_copy_pathname(entry, &ar->strtab[(size_t)number]);

  return (ar_parse_common_header(ar, entry, h));
 }






 if (strncmp(filename, "#1/", 3) == 0) {


  ar_parse_common_header(ar, entry, h);


  number = ar_atol10(h + AR_name_offset + 3, AR_name_size - 3);





  if (number > SIZE_MAX - 1
      || number > 1024 * 1024
      || (int64_t)number > ar->entry_bytes_remaining) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Bad input file size");
   return (ARCHIVE_FATAL);
  }
  bsd_name_length = (size_t)number;
  ar->entry_bytes_remaining -= bsd_name_length;

  archive_entry_set_size(entry, ar->entry_bytes_remaining);

  if (*unconsumed) {
   __archive_read_consume(a, *unconsumed);
   *unconsumed = 0;
  }


  if ((b = __archive_read_ahead(a, bsd_name_length, ((void*)0))) == ((void*)0)) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Truncated input file");
   return (ARCHIVE_FATAL);
  }

  p = (char *)malloc(bsd_name_length + 1);
  if (p == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate fname buffer");
   return (ARCHIVE_FATAL);
  }
  strncpy(p, b, bsd_name_length);
  p[bsd_name_length] = '\0';

  __archive_read_consume(a, bsd_name_length);

  archive_entry_copy_pathname(entry, p);
  free(p);
  return (ARCHIVE_OK);
 }





 if (strcmp(filename, "/") == 0 || strcmp(filename, "/SYM64/") == 0) {
  archive_entry_copy_pathname(entry, filename);

  r = ar_parse_common_header(ar, entry, h);

  archive_entry_set_filetype(entry, AE_IFREG);
  return (r);
 }




 if (strcmp(filename, "__.SYMDEF") == 0) {
  archive_entry_copy_pathname(entry, filename);

  return (ar_parse_common_header(ar, entry, h));
 }






 archive_entry_copy_pathname(entry, filename);
 return (ar_parse_common_header(ar, entry, h));
}
