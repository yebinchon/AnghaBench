
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; int sin6_scope_id; int sin6_port; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; } ;
struct sockaddr {int sa_family; } ;




 int IN6_ARE_ADDR_EQUAL (int *,int *) ;

__attribute__((used)) static int
sock_eq(struct sockaddr *a, struct sockaddr *b) {
 struct sockaddr_in *a4, *b4;
 struct sockaddr_in6 *a6, *b6;

 if (a->sa_family != b->sa_family)
  return 0;
 switch (a->sa_family) {
 case 129:
  a4 = (struct sockaddr_in *)a;
  b4 = (struct sockaddr_in *)b;
  return a4->sin_port == b4->sin_port &&
      a4->sin_addr.s_addr == b4->sin_addr.s_addr;
 case 128:
  a6 = (struct sockaddr_in6 *)a;
  b6 = (struct sockaddr_in6 *)b;
  return a6->sin6_port == b6->sin6_port &&



      IN6_ARE_ADDR_EQUAL(&a6->sin6_addr, &b6->sin6_addr);
 default:
  return 0;
 }
}
