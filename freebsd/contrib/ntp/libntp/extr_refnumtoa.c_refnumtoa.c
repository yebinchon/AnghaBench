
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_int32 ;
typedef int sockaddr_u ;


 int ISREFCLOCKADR (int *) ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 scalar_t__ SRCADR (int *) ;
 char* clockname (int) ;
 int snprintf (char*,int ,char*,...) ;
 char const* socktoa (int *) ;

const char *
refnumtoa(
 sockaddr_u *num
 )
{
 u_int32 netnum;
 char *buf;
 const char *rclock;

 if (!ISREFCLOCKADR(num))
  return socktoa(num);

 LIB_GETBUF(buf);
 netnum = SRCADR(num);
 rclock = clockname((int)((u_long)netnum >> 8) & 0xff);

 if (rclock != ((void*)0))
  snprintf(buf, LIB_BUFLENGTH, "%s(%lu)",
    rclock, (u_long)netnum & 0xff);
 else
  snprintf(buf, LIB_BUFLENGTH, "REFCLK(%lu,%lu)",
    ((u_long)netnum >> 8) & 0xff,
    (u_long)netnum & 0xff);

 return buf;
}
