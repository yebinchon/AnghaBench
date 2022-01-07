
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_int32 ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 scalar_t__ ntohl (scalar_t__) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;

char *
numtoa(
 u_int32 num
 )
{
 register u_int32 netnum;
 register char *buf;

 netnum = ntohl(num);
 LIB_GETBUF(buf);
 snprintf(buf, LIB_BUFLENGTH, "%lu.%lu.%lu.%lu",
   ((u_long)netnum >> 24) & 0xff,
   ((u_long)netnum >> 16) & 0xff,
   ((u_long)netnum >> 8) & 0xff,
   (u_long)netnum & 0xff);
 return buf;
}
