
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_string {int s; } ;
struct archive_match {int archive; } ;


 int ARCHIVE_FAILED ;
 int EINVAL ;
 scalar_t__ ENOMEM ;
 int archive_set_error (int *,int,char*) ;
 scalar_t__ archive_string_append_from_wcs (struct archive_string*,int const*,int ) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ errno ;
 int error_nomem (struct archive_match*) ;
 int set_timefilter_pathname_mbs (struct archive_match*,int,int ) ;
 int wcslen (int const*) ;

__attribute__((used)) static int
set_timefilter_pathname_wcs(struct archive_match *a, int timetype,
    const wchar_t *path)
{
 struct archive_string as;
 int r;

 if (path == ((void*)0) || *path == L'\0') {
  archive_set_error(&(a->archive), EINVAL, "pathname is empty");
  return (ARCHIVE_FAILED);
 }


 archive_string_init(&as);
 if (archive_string_append_from_wcs(&as, path, wcslen(path)) < 0) {
  archive_string_free(&as);
  if (errno == ENOMEM)
   return (error_nomem(a));
  archive_set_error(&(a->archive), -1,
      "Failed to convert WCS to MBS");
  return (ARCHIVE_FAILED);
 }

 r = set_timefilter_pathname_mbs(a, timetype, as.s);
 archive_string_free(&as);

 return (r);
}
