
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_addr; } ;
struct ip_list {scalar_t__ len; int addr; } ;
typedef scalar_t__ socklen_t ;
typedef int out ;


 scalar_t__ inet_ntop (int,void*,char*,scalar_t__) ;
 int printf (char*,char const*,...) ;
 scalar_t__ verb ;

__attribute__((used)) static void
verb_addr(const char* msg, struct ip_list* ip)
{
 if(verb) {
  char out[100];
  void* a = &((struct sockaddr_in*)&ip->addr)->sin_addr;
  if(ip->len != (socklen_t)sizeof(struct sockaddr_in))
   a = &((struct sockaddr_in6*)&ip->addr)->sin6_addr;

  if(inet_ntop((int)((struct sockaddr_in*)&ip->addr)->sin_family,
   a, out, (socklen_t)sizeof(out))==0)
   printf("%s (inet_ntop error)\n", msg);
  else printf("%s %s\n", msg, out);
 }
}
