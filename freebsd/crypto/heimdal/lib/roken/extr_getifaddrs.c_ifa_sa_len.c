
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ll {int sll_addr; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_data; } ;
typedef int sa_family_t ;






__attribute__((used)) static size_t
ifa_sa_len(sa_family_t family, int len)
{
  size_t size;
  switch(family){
  case 130:
    size = sizeof(struct sockaddr_in);
    break;
  case 129:
    size = sizeof(struct sockaddr_in6);
    break;
  case 128:
    size = (size_t)(((struct sockaddr_ll *)((void*)0))->sll_addr) + len;
    if (size < sizeof(struct sockaddr_ll))
      size = sizeof(struct sockaddr_ll);
    break;
  default:
    size = (size_t)(((struct sockaddr *)((void*)0))->sa_data) + len;
    if (size < sizeof(struct sockaddr))
      size = sizeof(struct sockaddr);
    break;
  }
  return size;
}
