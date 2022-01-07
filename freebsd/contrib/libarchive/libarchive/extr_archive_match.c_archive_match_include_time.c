
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct archive_match {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int set_timefilter (struct archive_match*,int,int ,long,int ,long) ;
 int validate_time_flag (struct archive*,int,char*) ;

int
archive_match_include_time(struct archive *_a, int flag, time_t sec,
    long nsec)
{
 int r;

 r = validate_time_flag(_a, flag, "archive_match_include_time");
 if (r != ARCHIVE_OK)
  return (r);
 return set_timefilter((struct archive_match *)_a, flag,
   sec, nsec, sec, nsec);
}
