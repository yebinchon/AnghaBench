
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct xdr_inaddr {int * addr; void* atype; } ;
struct in_addr {int s_addr; } ;
typedef int n_long ;
typedef int int32_t ;


 void* htonl (unsigned int) ;

int
xdr_inaddr_encode(char **pkt, struct in_addr ia)
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
 xi->atype = htonl(1);
 uia.l = ia.s_addr;
 cp = uia.c;
 ip = xi->addr;





 *ip++ = htonl((unsigned int)*cp++);
 *ip++ = htonl((unsigned int)*cp++);
 *ip++ = htonl((unsigned int)*cp++);
 *ip++ = htonl((unsigned int)*cp++);

 return (0);
}
