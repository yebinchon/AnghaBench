
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;





__attribute__((used)) static int socket_length(int family)
{
 switch (family) {
 case 129:
  return sizeof(struct sockaddr_in);




 }
 return -1;
}
