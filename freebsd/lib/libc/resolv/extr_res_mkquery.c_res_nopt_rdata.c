
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_3__ {unsigned int options; } ;


 int INT16SZ ;
 unsigned int RES_DEBUG ;
 int memcpy (int *,int *,int) ;
 int ns_put16 (int,int *) ;
 int printf (char*) ;

int
res_nopt_rdata(res_state statp,
   int n0,
   u_char *buf,
   int buflen,
   u_char *rdata,
   u_short code,
   u_short len,
   u_char *data)
{
 register u_char *cp, *ep;






 cp = buf + n0;
 ep = buf + buflen;

 if ((ep - cp) < (4 + len))
  return (-1);

 if (rdata < (buf + 2) || rdata >= ep)
  return (-1);

 ns_put16(code, cp);
 cp += INT16SZ;

 ns_put16(len, cp);
 cp += INT16SZ;

 memcpy(cp, data, len);
 cp += len;

 len = cp - rdata;
 ns_put16(len, rdata - 2);

 return (cp - buf);
}
