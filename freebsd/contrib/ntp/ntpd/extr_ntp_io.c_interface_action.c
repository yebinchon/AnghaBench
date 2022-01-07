
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32 ;
typedef int sockaddr_u ;
typedef int nic_rule_action ;
struct TYPE_3__ {int match_type; int prefixlen; int action; int if_name; int addr; struct TYPE_3__* next; } ;
typedef TYPE_1__ nic_rule ;


 int ACTION_DROP ;
 int ACTION_IGNORE ;
 int ACTION_LISTEN ;
 int DPRINTF (int,char*) ;
 int FNM_CASEFOLD ;
 int INT_LOOPBACK ;
 int IS_IPV4 (int *) ;
 int IS_IPV6 (int *) ;






 int SOCK_EQ (int *,int *) ;
 int action_text (int ) ;
 int addr_eqprefix (int *,int *,int) ;
 int fnmatch (int ,char*,int ) ;
 int is_wildcard_addr (int *) ;
 int listen_to_virtual_ips ;
 TYPE_1__* nic_rule_list ;
 int strcasecmp (char*,int ) ;
 int * strchr (char*,char) ;

__attribute__((used)) static nic_rule_action
interface_action(
 char * if_name,
 sockaddr_u * if_addr,
 u_int32 if_flags
 )
{
 nic_rule * rule;
 int isloopback;
 int iswildcard;

 DPRINTF(4, ("interface_action: interface %s ",
      (if_name != ((void*)0)) ? if_name : "wildcard"));

 iswildcard = is_wildcard_addr(if_addr);
 isloopback = !!(INT_LOOPBACK & if_flags);





 for (rule = nic_rule_list; rule != ((void*)0); rule = rule->next) {

  switch (rule->match_type) {

  case 133:

   if (isloopback || iswildcard)
    break;
   DPRINTF(4, ("nic all %s\n",
       action_text(rule->action)));
   return rule->action;

  case 130:
   if (IS_IPV4(if_addr)) {
    DPRINTF(4, ("nic ipv4 %s\n",
        action_text(rule->action)));
    return rule->action;
   }
   break;

  case 129:
   if (IS_IPV6(if_addr)) {
    DPRINTF(4, ("nic ipv6 %s\n",
        action_text(rule->action)));
    return rule->action;
   }
   break;

  case 128:
   if (iswildcard) {
    DPRINTF(4, ("nic wildcard %s\n",
        action_text(rule->action)));
    return rule->action;
   }
   break;

  case 132:
   if (rule->prefixlen != -1) {
    if (addr_eqprefix(if_addr, &rule->addr,
        rule->prefixlen)) {

     DPRINTF(4, ("subnet address match - %s\n",
         action_text(rule->action)));
     return rule->action;
    }
   } else
    if (SOCK_EQ(if_addr, &rule->addr)) {

     DPRINTF(4, ("address match - %s\n",
         action_text(rule->action)));
     return rule->action;
    }
   break;

  case 131:
   if (if_name != ((void*)0)



       && !strcasecmp(if_name, rule->if_name)

       ) {

    DPRINTF(4, ("interface name match - %s\n",
        action_text(rule->action)));
    return rule->action;
   }
   break;
  }
 }







 if (isloopback) {
  DPRINTF(4, ("default loopback listen\n"));
  return ACTION_LISTEN;
 }






 if (iswildcard) {
  DPRINTF(4, ("default wildcard drop\n"));
  return ACTION_DROP;
 }






 if (!listen_to_virtual_ips && if_name != ((void*)0)
     && (strchr(if_name, ':') != ((void*)0))) {

  DPRINTF(4, ("virtual ip - ignore\n"));
  return ACTION_IGNORE;
 }
 if (((void*)0) == nic_rule_list) {
  DPRINTF(4, ("default listen\n"));
  return ACTION_LISTEN;
 }

 DPRINTF(4, ("implicit ignore\n"));
 return ACTION_IGNORE;
}
