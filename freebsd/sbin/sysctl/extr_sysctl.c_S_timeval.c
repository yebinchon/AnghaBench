
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
typedef int intmax_t ;


 int ctime (scalar_t__*) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 scalar_t__ hflag ;
 int printf (char*,int ,int ) ;
 int stdout ;
 char* strdup (int ) ;
 int warnx (char*,size_t,int) ;

__attribute__((used)) static int
S_timeval(size_t l2, void *p)
{
 struct timeval *tv = (struct timeval*)p;
 time_t tv_sec;
 char *p1, *p2;

 if (l2 != sizeof(*tv)) {
  warnx("S_timeval %zu != %zu", l2, sizeof(*tv));
  return (1);
 }
 printf(hflag ? "{ sec = %'jd, usec = %'ld } " :
  "{ sec = %jd, usec = %ld } ",
  (intmax_t)tv->tv_sec, tv->tv_usec);
 tv_sec = tv->tv_sec;
 p1 = strdup(ctime(&tv_sec));
 for (p2=p1; *p2 ; p2++)
  if (*p2 == '\n')
   *p2 = '\0';
 fputs(p1, stdout);
 free(p1);
 return (0);
}
