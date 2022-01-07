
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct respip_set {int region; } ;
struct resp_addr {scalar_t__ action; } ;


 int log_err (char*,char const*,char const*) ;
 int respip_enter_rr (int ,struct resp_addr*,char const*,char const*) ;
 struct resp_addr* respip_find_or_create (struct respip_set*,char const*,int ) ;
 scalar_t__ respip_none ;

__attribute__((used)) static int
respip_data_cfg(struct respip_set* set, const char* ipstr, const char* rrstr)
{
 struct resp_addr* node;

 node=respip_find_or_create(set, ipstr, 0);
 if(!node || node->action == respip_none) {
  log_err("cannot parse response-ip-data %s: "
   "response-ip node for %s not found", rrstr, ipstr);
  return 0;
 }
 return respip_enter_rr(set->region, node, rrstr, ipstr);
}
