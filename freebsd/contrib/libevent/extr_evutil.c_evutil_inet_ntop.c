
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct in6_addr {int* s6_addr; } ;
typedef scalar_t__ ev_uint8_t ;
typedef int ev_uint32_t ;
typedef int ev_uint16_t ;
typedef int buf ;
typedef scalar_t__ a ;


 int AF_INET ;
 int AF_INET6 ;
 int evutil_snprintf (char*,int,char*,unsigned int,...) ;
 char const* inet_ntop (int,void const*,char*,size_t) ;
 int ntohl (int ) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;

const char *
evutil_inet_ntop(int af, const void *src, char *dst, size_t len)
{



 if (af == AF_INET) {
  const struct in_addr *in = src;
  const ev_uint32_t a = ntohl(in->s_addr);
  int r;
  r = evutil_snprintf(dst, len, "%d.%d.%d.%d",
      (int)(ev_uint8_t)((a>>24)&0xff),
      (int)(ev_uint8_t)((a>>16)&0xff),
      (int)(ev_uint8_t)((a>>8 )&0xff),
      (int)(ev_uint8_t)((a )&0xff));
  if (r<0||(size_t)r>=len)
   return ((void*)0);
  else
   return dst;
 } else {
  return ((void*)0);
 }

}
