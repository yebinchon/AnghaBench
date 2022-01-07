
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ time_t ;
struct archive_string {int s; } ;
struct archive_match {int archive; int now; } ;


 int ARCHIVE_FAILED ;
 int EINVAL ;
 scalar_t__ ENOMEM ;
 int archive_set_error (int *,int,char*) ;
 scalar_t__ archive_string_append_from_wcs (struct archive_string*,int const*,int ) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ errno ;
 int error_nomem (struct archive_match*) ;
 scalar_t__ get_date (int ,int ) ;
 int set_timefilter (struct archive_match*,int,scalar_t__,int ,scalar_t__,int ) ;
 int wcslen (int const*) ;

__attribute__((used)) static int
set_timefilter_date_w(struct archive_match *a, int timetype,
    const wchar_t *datestr)
{
 struct archive_string as;
 time_t t;

 if (datestr == ((void*)0) || *datestr == L'\0') {
  archive_set_error(&(a->archive), EINVAL, "date is empty");
  return (ARCHIVE_FAILED);
 }

 archive_string_init(&as);
 if (archive_string_append_from_wcs(&as, datestr, wcslen(datestr)) < 0) {
  archive_string_free(&as);
  if (errno == ENOMEM)
   return (error_nomem(a));
  archive_set_error(&(a->archive), -1,
      "Failed to convert WCS to MBS");
  return (ARCHIVE_FAILED);
 }
 t = get_date(a->now, as.s);
 archive_string_free(&as);
 if (t == (time_t)-1) {
  archive_set_error(&(a->archive), EINVAL, "invalid date string");
  return (ARCHIVE_FAILED);
 }
 return set_timefilter(a, timetype, t, 0, t, 0);
}
