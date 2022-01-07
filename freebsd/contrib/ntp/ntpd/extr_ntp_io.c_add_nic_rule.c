
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ nic_rule_match ;
typedef int nic_rule_action ;
struct TYPE_4__ {int prefixlen; int addr; int if_name; int action; scalar_t__ match_type; } ;
typedef TYPE_1__ nic_rule ;
typedef int isc_boolean_t ;


 int AF_UNSPEC ;
 int LINK_SLIST (int ,TYPE_1__*,int ) ;
 scalar_t__ MATCH_IFADDR ;
 scalar_t__ MATCH_IFNAME ;
 int REQUIRE (int) ;
 TYPE_1__* emalloc_zero (int) ;
 int estrdup (char const*) ;
 int is_ip_address (char const*,int ,int *) ;
 int next ;
 int nic_rule_list ;

void
add_nic_rule(
 nic_rule_match match_type,
 const char * if_name,
 int prefixlen,
 nic_rule_action action
 )
{
 nic_rule * rule;
 isc_boolean_t is_ip;

 rule = emalloc_zero(sizeof(*rule));
 rule->match_type = match_type;
 rule->prefixlen = prefixlen;
 rule->action = action;

 if (MATCH_IFNAME == match_type) {
  REQUIRE(((void*)0) != if_name);
  rule->if_name = estrdup(if_name);
 } else if (MATCH_IFADDR == match_type) {
  REQUIRE(((void*)0) != if_name);

  is_ip = is_ip_address(if_name, AF_UNSPEC, &rule->addr);
  REQUIRE(is_ip);
 } else
  REQUIRE(((void*)0) == if_name);

 LINK_SLIST(nic_rule_list, rule, next);
}
