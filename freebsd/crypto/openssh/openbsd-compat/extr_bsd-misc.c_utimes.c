
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimbuf {int modtime; int actime; } ;
struct timeval {int tv_sec; } ;


 int utime (char*,struct utimbuf*) ;

int utimes(char *filename, struct timeval *tvp)
{
 struct utimbuf ub;

 ub.actime = tvp[0].tv_sec;
 ub.modtime = tvp[1].tv_sec;

 return (utime(filename, &ub));
}
