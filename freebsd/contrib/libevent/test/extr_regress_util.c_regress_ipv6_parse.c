
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int written ;
struct ipv6_entry {scalar_t__ status; int* res; scalar_t__ addr; } ;
struct in6_addr {scalar_t__* s6_addr; } ;
typedef int ev_uint32_t ;


 int AF_INET6 ;
 scalar_t__ BAD ;
 scalar_t__ CANONICAL ;
 int TT_BLATHER (char*) ;
 int TT_FAIL (char*) ;
 char* evutil_inet_ntop (int ,struct in6_addr*,char*,int) ;
 int evutil_inet_pton (int ,scalar_t__,struct in6_addr*) ;
 struct ipv6_entry* ipv6_entries ;
 scalar_t__ strcmp (char*,scalar_t__) ;

__attribute__((used)) static void
regress_ipv6_parse(void *ptr)
{
 TT_BLATHER(("Skipping IPv6 address parsing."));

}
