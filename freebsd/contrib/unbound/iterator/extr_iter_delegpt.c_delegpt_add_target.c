
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct regional {int dummy; } ;
struct delegpt_ns {int got6; int got4; int resolved; } ;
struct delegpt {int dp_type_mlc; } ;
typedef int socklen_t ;


 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 int delegpt_add_addr (struct delegpt*,struct regional*,struct sockaddr_storage*,int ,int ,int ,int *) ;
 struct delegpt_ns* delegpt_find_ns (struct delegpt*,int *,size_t) ;
 int log_assert (int) ;

int
delegpt_add_target(struct delegpt* dp, struct regional* region,
 uint8_t* name, size_t namelen, struct sockaddr_storage* addr,
 socklen_t addrlen, uint8_t bogus, uint8_t lame)
{
 struct delegpt_ns* ns = delegpt_find_ns(dp, name, namelen);
 log_assert(!dp->dp_type_mlc);
 if(!ns) {

  return 1;
 }
 if(!lame) {
  if(addr_is_ip6(addr, addrlen))
   ns->got6 = 1;
  else ns->got4 = 1;
  if(ns->got4 && ns->got6)
   ns->resolved = 1;
 }
 return delegpt_add_addr(dp, region, addr, addrlen, bogus, lame, ((void*)0));
}
