
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct archive_match {int archive; int now; } ;


 int ARCHIVE_FAILED ;
 int EINVAL ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ get_date (int ,char const*) ;
 int set_timefilter (struct archive_match*,int,scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static int
set_timefilter_date(struct archive_match *a, int timetype, const char *datestr)
{
 time_t t;

 if (datestr == ((void*)0) || *datestr == '\0') {
  archive_set_error(&(a->archive), EINVAL, "date is empty");
  return (ARCHIVE_FAILED);
 }
 t = get_date(a->now, datestr);
 if (t == (time_t)-1) {
  archive_set_error(&(a->archive), EINVAL, "invalid date string");
  return (ARCHIVE_FAILED);
 }
 return set_timefilter(a, timetype, t, 0, t, 0);
}
