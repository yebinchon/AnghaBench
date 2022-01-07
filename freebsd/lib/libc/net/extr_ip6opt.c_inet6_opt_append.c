
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int socklen_t ;


 int IP6OPT_PAD1 ;
 int IP6OPT_PADN ;
 int memset (int*,int ,int) ;

int
inet6_opt_append(void *extbuf, socklen_t extlen, int offset, u_int8_t type,
   socklen_t len, u_int8_t align, void **databufp)
{
 int currentlen = offset, padlen = 0;





 if (type < 2)
  return(-1);





 if (len > 255 || len < 0 )
  return(-1);





 if (align != 1 && align != 2 && align != 4 && align != 8)
  return(-1);
 if (align > len)
  return(-1);


 currentlen += 2 + len;
 if (currentlen % align)
  padlen = align - (currentlen % align);


 currentlen += padlen;
 if (extlen &&
     currentlen > extlen)
  return(-1);

 if (extbuf) {
  u_int8_t *optp = (u_int8_t *)extbuf + offset;

  if (padlen == 1) {

   *optp = IP6OPT_PAD1;
   optp++;
  }
  else if (padlen > 0) {

   *optp++ = IP6OPT_PADN;
   *optp++ = padlen - 2;
   memset(optp, 0, padlen - 2);
   optp += (padlen - 2);
  }

  *optp++ = type;
  *optp++ = len;

  *databufp = optp;
 }

 return(currentlen);
}
