
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct hostent {int h_addr; } ;
typedef int naddr ;


 struct hostent* gethostbyname (char*) ;
 int inet_aton (char*,struct in_addr*) ;
 int memcpy (int *,int ,int) ;
 int ntohl (int ) ;

int
gethost(char *name,
 naddr *addrp)
{
 struct hostent *hp;
 struct in_addr in;






 if (inet_aton(name, &in) == 1) {



  if (ntohl(in.s_addr)>>24 == 0
      || ntohl(in.s_addr)>>24 == 0xff)
   return 0;
  *addrp = in.s_addr;
  return 1;
 }

 hp = gethostbyname(name);
 if (hp) {
  memcpy(addrp, hp->h_addr, sizeof(*addrp));
  return 1;
 }

 return 0;
}
