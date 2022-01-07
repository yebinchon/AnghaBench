
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr_ll {size_t sll_halen; int sll_addr; } ;
struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; int sa_len; int sa_data; } ;
typedef int sa_family_t ;





 int IN6_IS_ADDR_LINKLOCAL (void*) ;
 int IN6_IS_ADDR_MC_LINKLOCAL (void*) ;
 int ifa_sa_len (int,size_t) ;
 int memcpy (int ,void*,size_t) ;

__attribute__((used)) static void
ifa_make_sockaddr(sa_family_t family,
    struct sockaddr *sa,
    void *p, size_t len,
    uint32_t scope, uint32_t scopeid)
{
  if (sa == ((void*)0)) return;
  switch(family){
  case 130:
    memcpy(&((struct sockaddr_in*)sa)->sin_addr, (char *)p, len);
    break;
  case 129:
    memcpy(&((struct sockaddr_in6*)sa)->sin6_addr, (char *)p, len);
    if (IN6_IS_ADDR_LINKLOCAL(p) ||
 IN6_IS_ADDR_MC_LINKLOCAL(p)){
      ((struct sockaddr_in6*)sa)->sin6_scope_id = scopeid;
    }
    break;
  case 128:
    memcpy(((struct sockaddr_ll*)sa)->sll_addr, (char *)p, len);
    ((struct sockaddr_ll*)sa)->sll_halen = len;
    break;
  default:
    memcpy(sa->sa_data, p, len);
    break;
  }
  sa->sa_family = family;



}
