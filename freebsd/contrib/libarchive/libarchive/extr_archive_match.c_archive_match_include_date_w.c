
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_match {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int set_timefilter_date_w (struct archive_match*,int,int const*) ;
 int validate_time_flag (struct archive*,int,char*) ;

int
archive_match_include_date_w(struct archive *_a, int flag,
    const wchar_t *datestr)
{
 int r;

 r = validate_time_flag(_a, flag, "archive_match_include_date_w");
 if (r != ARCHIVE_OK)
  return (r);

 return set_timefilter_date_w((struct archive_match *)_a, flag, datestr);
}
