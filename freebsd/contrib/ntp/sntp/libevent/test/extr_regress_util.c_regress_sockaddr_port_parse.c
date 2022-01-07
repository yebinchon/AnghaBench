
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int sin_len; int sin6_len; int sin6_addr; void* sin6_port; scalar_t__ sin6_family; int sin_addr; void* sin_port; scalar_t__ sin_family; } ;
struct sockaddr_in6 {int sin_len; int sin6_len; int sin6_addr; void* sin6_port; scalar_t__ sin6_family; int sin_addr; void* sin_port; scalar_t__ sin_family; } ;
struct sockaddr_in {int sin_len; int sin6_len; int sin6_addr; void* sin6_port; scalar_t__ sin6_family; int sin_addr; void* sin_port; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct sa_port_ent {scalar_t__ safamily; scalar_t__ parse; int addr; int port; } ;
typedef int ss ;
typedef int sin6 ;
typedef int sin ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int TT_FAIL (char*) ;
 int evutil_inet_pton (scalar_t__,int ,int *) ;
 int evutil_parse_sockaddr_port (scalar_t__,struct sockaddr*,int*) ;
 void* htons (int ) ;
 scalar_t__ memcmp (struct sockaddr_storage*,struct sockaddr_storage*,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 struct sa_port_ent* sa_port_ents ;

__attribute__((used)) static void
regress_sockaddr_port_parse(void *ptr)
{
 struct sockaddr_storage ss;
 int i, r;

 for (i = 0; sa_port_ents[i].parse; ++i) {
  struct sa_port_ent *ent = &sa_port_ents[i];
  int len = sizeof(ss);
  memset(&ss, 0, sizeof(ss));
  r = evutil_parse_sockaddr_port(ent->parse, (struct sockaddr*)&ss, &len);
  if (r < 0) {
   if (ent->safamily)
    TT_FAIL(("Couldn't parse %s!", ent->parse));
   continue;
  } else if (! ent->safamily) {
   TT_FAIL(("Shouldn't have been able to parse %s!", ent->parse));
   continue;
  }
  if (ent->safamily == AF_INET) {
   struct sockaddr_in sin;
   memset(&sin, 0, sizeof(sin));



   sin.sin_family = AF_INET;
   sin.sin_port = htons(ent->port);
   r = evutil_inet_pton(AF_INET, ent->addr, &sin.sin_addr);
   if (1 != r) {
    TT_FAIL(("Couldn't parse ipv4 target %s.", ent->addr));
   } else if (memcmp(&sin, &ss, sizeof(sin))) {
    TT_FAIL(("Parse for %s was not as expected.", ent->parse));
   } else if (len != sizeof(sin)) {
    TT_FAIL(("Length for %s not as expected.",ent->parse));
   }
  } else {
   struct sockaddr_in6 sin6;
   memset(&sin6, 0, sizeof(sin6));



   sin6.sin6_family = AF_INET6;
   sin6.sin6_port = htons(ent->port);
   r = evutil_inet_pton(AF_INET6, ent->addr, &sin6.sin6_addr);
   if (1 != r) {
    TT_FAIL(("Couldn't parse ipv6 target %s.", ent->addr));
   } else if (memcmp(&sin6, &ss, sizeof(sin6))) {
    TT_FAIL(("Parse for %s was not as expected.", ent->parse));
   } else if (len != sizeof(sin6)) {
    TT_FAIL(("Length for %s not as expected.",ent->parse));
   }
  }
 }
}
