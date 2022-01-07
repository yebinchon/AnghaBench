
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct xdr_inaddr {scalar_t__ atype; int * addr; } ;
struct in_addr {int s_addr; } ;
typedef int n_long ;
typedef int int32_t ;


 int RPC_PRINTF (char*) ;
 scalar_t__ htonl (int) ;
 void* ntohl (scalar_t__) ;

int
xdr_inaddr_decode(char **pkt, struct in_addr *ia)
{
 struct xdr_inaddr *xi;
 u_char *cp;
 int32_t *ip;
 union {
  n_long l;
  u_char c[4];
 } uia;


 xi = (struct xdr_inaddr *) *pkt;
 *pkt += sizeof(*xi);
 if (xi->atype != htonl(1)) {
  RPC_PRINTF(("xdr_inaddr_decode: bad addrtype=%d\n",
      ntohl(xi->atype)));
  return(-1);
 }

 cp = uia.c;
 ip = xi->addr;





 *cp++ = ntohl(*ip++);
 *cp++ = ntohl(*ip++);
 *cp++ = ntohl(*ip++);
 *cp++ = ntohl(*ip++);
 ia->s_addr = uia.l;

 return (0);
}
