
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ib {int sib_addr; int sib_family; } ;
struct sockaddr {int dummy; } ;


 int AF_IB ;
 int AF_INET6 ;
 int get_addr (char*,struct sockaddr*) ;
 int inet_pton (int ,char*,int *) ;
 int memset (struct sockaddr_ib*,int ,int) ;
 int unmapped_addr ;

__attribute__((used)) static int get_dst_addr(char *dst, struct sockaddr *addr)
{
 struct sockaddr_ib *sib;

 if (!unmapped_addr)
  return get_addr(dst, addr);

 sib = (struct sockaddr_ib *) addr;
 memset(sib, 0, sizeof *sib);
 sib->sib_family = AF_IB;
 inet_pton(AF_INET6, dst, &sib->sib_addr);
 return 0;
}
