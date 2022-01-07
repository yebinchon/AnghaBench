
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_2__ {struct in_addr sin_addr; } ;
union res_sockaddr_union {TYPE_1__ sin; } ;
typedef int res_state ;
typedef int ns_class ;


 int RES_IPV4ONLY ;
 int RES_IPV6ONLY ;
 union res_sockaddr_union* calloc (int,int) ;
 int free (union res_sockaddr_union*) ;
 int res_findzonecut2 (int ,char const*,int ,int,char*,size_t,union res_sockaddr_union*,int) ;

int
res_findzonecut(res_state statp, const char *dname, ns_class class, int opts,
  char *zname, size_t zsize, struct in_addr *addrs, int naddrs)
{
 int result, i;
 union res_sockaddr_union *u;


 opts |= RES_IPV4ONLY;
 opts &= ~RES_IPV6ONLY;

 u = calloc(naddrs, sizeof(*u));
 if (u == ((void*)0))
  return(-1);

 result = res_findzonecut2(statp, dname, class, opts, zname, zsize,
      u, naddrs);

 for (i = 0; i < result; i++) {
  addrs[i] = u[i].sin.sin_addr;
 }
 free(u);
 return (result);
}
