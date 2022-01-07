
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_list {int dummy; } ;
struct archive_string {int s; } ;
struct archive_match {int archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int add_pattern_mbs (struct archive_match*,struct match_list*,int ) ;
 int archive_copy_error (int *,struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,size_t*,int *) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,void const*,int) ;
 int archive_read_open_filename_w (struct archive*,void const*,int) ;
 int archive_read_support_format_empty (struct archive*) ;
 int archive_read_support_format_raw (struct archive*) ;
 int archive_set_error (int *,int ,char*) ;
 int archive_string_empty (struct archive_string*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ archive_strlen (struct archive_string*) ;
 int archive_strncat (struct archive_string*,char const*,size_t) ;

__attribute__((used)) static int
add_pattern_from_file(struct archive_match *a, struct match_list *mlist,
    int mbs, const void *pathname, int nullSeparator)
{
 struct archive *ar;
 struct archive_entry *ae;
 struct archive_string as;
 const void *buff;
 size_t size;
 int64_t offset;
 int r;

 ar = archive_read_new();
 if (ar == ((void*)0)) {
  archive_set_error(&(a->archive), ENOMEM, "No memory");
  return (ARCHIVE_FATAL);
 }
 r = archive_read_support_format_raw(ar);
 r = archive_read_support_format_empty(ar);
 if (r != ARCHIVE_OK) {
  archive_copy_error(&(a->archive), ar);
  archive_read_free(ar);
  return (r);
 }
 if (mbs)
  r = archive_read_open_filename(ar, pathname, 512*20);
 else
  r = archive_read_open_filename_w(ar, pathname, 512*20);
 if (r != ARCHIVE_OK) {
  archive_copy_error(&(a->archive), ar);
  archive_read_free(ar);
  return (r);
 }
 r = archive_read_next_header(ar, &ae);
 if (r != ARCHIVE_OK) {
  archive_read_free(ar);
  if (r == ARCHIVE_EOF) {
   return (ARCHIVE_OK);
  } else {
   archive_copy_error(&(a->archive), ar);
   return (r);
  }
 }

 archive_string_init(&as);

 while ((r = archive_read_data_block(ar, &buff, &size, &offset))
     == ARCHIVE_OK) {
  const char *b = (const char *)buff;

  while (size) {
   const char *s = (const char *)b;
   size_t length = 0;
   int found_separator = 0;

   while (length < size) {
    if (nullSeparator) {
     if (*b == '\0') {
      found_separator = 1;
      break;
     }
    } else {
                if (*b == 0x0d || *b == 0x0a) {
      found_separator = 1;
      break;
     }
    }
    b++;
    length++;
   }
   if (!found_separator) {
    archive_strncat(&as, s, length);

    break;
   }
   b++;
   size -= length + 1;
   archive_strncat(&as, s, length);


   if (archive_strlen(&as) > 0) {

    r = add_pattern_mbs(a, mlist, as.s);
    if (r != ARCHIVE_OK) {
     archive_read_free(ar);
     archive_string_free(&as);
     return (r);
    }
    archive_string_empty(&as);
   }
  }
 }


 if (r < ARCHIVE_OK) {
  archive_copy_error(&(a->archive), ar);
  archive_read_free(ar);
  archive_string_free(&as);
  return (r);
 }


 if (r == ARCHIVE_EOF && archive_strlen(&as) > 0) {

  r = add_pattern_mbs(a, mlist, as.s);
  if (r != ARCHIVE_OK) {
   archive_read_free(ar);
   archive_string_free(&as);
   return (r);
  }
 }
 archive_read_free(ar);
 archive_string_free(&as);
 return (ARCHIVE_OK);
}
