
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u_int16_t ;
typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_5__ {int arcount; } ;
struct TYPE_4__ {unsigned int options; } ;
typedef TYPE_2__ HEADER ;


 int INT16SZ ;
 scalar_t__ NOERROR ;
 unsigned int NS_OPT_DNSSEC_OK ;
 unsigned int RES_DEBUG ;
 int RES_USE_DNSSEC ;
 int RRFIXEDSZ ;
 int htons (scalar_t__) ;
 int ns_put16 (unsigned int,int *) ;
 unsigned int ns_t_opt ;
 scalar_t__ ntohs (int ) ;
 int printf (char*) ;

int
res_nopt(res_state statp,
  int n0,
  u_char *buf,
  int buflen,
  int anslen)
{
 HEADER *hp;
 u_char *cp, *ep;
 u_int16_t flags = 0;






 hp = (HEADER *) buf;
 cp = buf + n0;
 ep = buf + buflen;

 if ((ep - cp) < 1 + RRFIXEDSZ)
  return (-1);

 *cp++ = 0;
 ns_put16(ns_t_opt, cp);
 cp += INT16SZ;
 if (anslen > 0xffff)
  anslen = 0xffff;
 ns_put16(anslen & 0xffff, cp);
 cp += INT16SZ;
 *cp++ = NOERROR;
 *cp++ = 0;

 if (statp->options & RES_USE_DNSSEC) {




  flags |= NS_OPT_DNSSEC_OK;
 }
 ns_put16(flags, cp);
 cp += INT16SZ;

 ns_put16(0U, cp);
 cp += INT16SZ;

 hp->arcount = htons(ntohs(hp->arcount) + 1);

 return (cp - buf);
}
