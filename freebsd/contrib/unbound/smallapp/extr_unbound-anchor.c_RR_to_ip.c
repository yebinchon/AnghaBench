
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_in6 {int sin6_addr; void* sin6_port; int sin6_family; } ;
struct sockaddr_in {int sin_addr; void* sin_port; int sin_family; } ;
struct ip_list {void* len; int addr; } ;
typedef void* socklen_t ;
typedef void* in_port_t ;


 int AF_INET ;
 int AF_INET6 ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 scalar_t__ calloc (int,int) ;
 int free (struct ip_list*) ;
 scalar_t__ htons (int ) ;
 int memmove (int *,char*,int) ;
 int printf (char*) ;
 scalar_t__ verb ;
 int verb_addr (char*,struct ip_list*) ;

__attribute__((used)) static struct ip_list*
RR_to_ip(int tp, char* data, int len, int port)
{
 struct ip_list* ip = (struct ip_list*)calloc(1, sizeof(*ip));
 uint16_t p = (uint16_t)port;
 if(tp == LDNS_RR_TYPE_A) {
  struct sockaddr_in* sa = (struct sockaddr_in*)&ip->addr;
  ip->len = (socklen_t)sizeof(*sa);
  sa->sin_family = AF_INET;
  sa->sin_port = (in_port_t)htons(p);
  if(len != (int)sizeof(sa->sin_addr)) {
   if(verb) printf("skipped badly formatted A\n");
   free(ip);
   return ((void*)0);
  }
  memmove(&sa->sin_addr, data, sizeof(sa->sin_addr));

 } else if(tp == LDNS_RR_TYPE_AAAA) {
  struct sockaddr_in6* sa = (struct sockaddr_in6*)&ip->addr;
  ip->len = (socklen_t)sizeof(*sa);
  sa->sin6_family = AF_INET6;
  sa->sin6_port = (in_port_t)htons(p);
  if(len != (int)sizeof(sa->sin6_addr)) {
   if(verb) printf("skipped badly formatted AAAA\n");
   free(ip);
   return ((void*)0);
  }
  memmove(&sa->sin6_addr, data, sizeof(sa->sin6_addr));
 } else {
  if(verb) printf("internal error: bad type in RRtoip\n");
  free(ip);
  return ((void*)0);
 }
 verb_addr("resolved server address", ip);
 return ip;
}
