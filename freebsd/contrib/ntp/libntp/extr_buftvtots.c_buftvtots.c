
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int tv_usec; } ;
typedef int l_fp ;


 int FALSE ;
 int MICROSECONDS ;
 int TRUE ;
 int memcpy (struct timeval*,char const*,int) ;
 int tval_stamp_to_lfp (struct timeval) ;

int
buftvtots(
 const char *bufp,
 l_fp *ts
 )
{
 struct timeval tv;




 memcpy(&tv, bufp, sizeof(tv));




 if (tv.tv_usec > MICROSECONDS - 1)
  return FALSE;

 *ts = tval_stamp_to_lfp(tv);

 return TRUE;
}
