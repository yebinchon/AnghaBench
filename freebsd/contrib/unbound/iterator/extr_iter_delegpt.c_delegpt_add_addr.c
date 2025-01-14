
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct regional {int dummy; } ;
struct delegpt_addr {int * tls_auth_name; scalar_t__ dnsseclame; void* lame; void* bogus; scalar_t__ attempts; int addrlen; int addr; struct delegpt_addr* next_usable; scalar_t__ next_result; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* usable_list; struct delegpt_addr* target_list; int dp_type_mlc; } ;
typedef int socklen_t ;


 struct delegpt_addr* delegpt_find_addr (struct delegpt*,struct sockaddr_storage*,int ) ;
 int log_assert (int) ;
 int memcpy (int *,struct sockaddr_storage*,int ) ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 int * regional_strdup (struct regional*,char*) ;

int
delegpt_add_addr(struct delegpt* dp, struct regional* region,
 struct sockaddr_storage* addr, socklen_t addrlen, uint8_t bogus,
 uint8_t lame, char* tls_auth_name)
{
 struct delegpt_addr* a;
 log_assert(!dp->dp_type_mlc);

 if((a = delegpt_find_addr(dp, addr, addrlen))) {
  if(bogus)
   a->bogus = bogus;
  if(!lame)
   a->lame = 0;
  return 1;
 }

 a = (struct delegpt_addr*)regional_alloc(region,
  sizeof(struct delegpt_addr));
 if(!a)
  return 0;
 a->next_target = dp->target_list;
 dp->target_list = a;
 a->next_result = 0;
 a->next_usable = dp->usable_list;
 dp->usable_list = a;
 memcpy(&a->addr, addr, addrlen);
 a->addrlen = addrlen;
 a->attempts = 0;
 a->bogus = bogus;
 a->lame = lame;
 a->dnsseclame = 0;
 if(tls_auth_name) {
  a->tls_auth_name = regional_strdup(region, tls_auth_name);
  if(!a->tls_auth_name)
   return 0;
 } else {
  a->tls_auth_name = ((void*)0);
 }
 return 1;
}
