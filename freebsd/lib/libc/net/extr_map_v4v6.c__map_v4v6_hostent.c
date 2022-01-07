
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct hostent {scalar_t__ h_addrtype; scalar_t__ h_length; char** h_addr_list; } ;
typedef int align ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IN6ADDRSZ ;
 scalar_t__ INADDRSZ ;
 int _map_v4v6_address (char*,char*) ;

void
_map_v4v6_hostent(struct hostent *hp, char **bpp, char *ep) {
 char **ap;

 if (hp->h_addrtype != AF_INET || hp->h_length != INADDRSZ)
  return;
 hp->h_addrtype = AF_INET6;
 hp->h_length = IN6ADDRSZ;
 for (ap = hp->h_addr_list; *ap; ap++) {
  int i = (u_long)*bpp % sizeof(align);

  if (i != 0)
   i = sizeof(align) - i;

  if ((ep - *bpp) < (i + IN6ADDRSZ)) {

   *ap = ((void*)0);
   return;
  }
  *bpp += i;
  _map_v4v6_address(*ap, *bpp);
  *ap = *bpp;
  *bpp += IN6ADDRSZ;
 }
}
