
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_match {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int set_timefilter_date (struct archive_match*,int,char const*) ;
 int validate_time_flag (struct archive*,int,char*) ;

int
archive_match_include_date(struct archive *_a, int flag,
    const char *datestr)
{
 int r;

 r = validate_time_flag(_a, flag, "archive_match_include_date");
 if (r != ARCHIVE_OK)
  return (r);
 return set_timefilter_date((struct archive_match *)_a, flag, datestr);
}
