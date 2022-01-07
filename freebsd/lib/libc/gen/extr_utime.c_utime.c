
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimbuf {int modtime; int actime; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;


 int utimes (char const*,struct timeval*) ;

int
utime(const char *path, const struct utimbuf *times)
{
 struct timeval tv[2], *tvp;

 if (times) {
  tv[0].tv_sec = times->actime;
  tv[1].tv_sec = times->modtime;
  tv[0].tv_usec = tv[1].tv_usec = 0;
  tvp = tv;
 } else
  tvp = ((void*)0);
 return (utimes(path, tvp));
}
