
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int int64_t ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_B ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 scalar_t__ INT64_MAX ;
 scalar_t__ errno ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 int printf (char*,char*) ;
 scalar_t__ strtoumax (char*,char**,int) ;

__attribute__((used)) static void
md_prthumanval(char *length)
{
 char buf[6];
 uintmax_t bytes;
 char *endptr;

 errno = 0;
 bytes = strtoumax(length, &endptr, 10);
 if (errno != 0 || *endptr != '\0' || bytes > INT64_MAX)
  return;
 humanize_number(buf, sizeof(buf), (int64_t)bytes, "",
     HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);
 (void)printf("%6s", buf);
}
