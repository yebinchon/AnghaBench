
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int socklen_t ;


 int IP6OPT_PAD1 ;
 int IP6OPT_PADN ;
 int memset (int *,int ,int) ;

int
inet6_opt_finish(void *extbuf, socklen_t extlen, int offset)
{
 int updatelen = offset > 0 ? (1 + ((offset - 1) | 7)) : 0;

 if (extbuf) {
  u_int8_t *padp;
  int padlen = updatelen - offset;

  if (updatelen > extlen)
   return(-1);

  padp = (u_int8_t *)extbuf + offset;
  if (padlen == 1)
   *padp = IP6OPT_PAD1;
  else if (padlen > 0) {
   *padp++ = IP6OPT_PADN;
   *padp++ = (padlen - 2);
   memset(padp, 0, padlen - 2);
  }
 }

 return(updatelen);
}
