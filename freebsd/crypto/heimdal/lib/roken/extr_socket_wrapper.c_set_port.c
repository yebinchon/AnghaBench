
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;




 void* htons (int) ;

__attribute__((used)) static void set_port(int family, int prt, struct sockaddr *addr)
{
 switch (family) {
 case 129:
  ((struct sockaddr_in *)addr)->sin_port = htons(prt);
  break;





 }
}
