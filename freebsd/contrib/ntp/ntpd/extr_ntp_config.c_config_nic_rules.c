
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_5__ {char* if_name; int match_class; int action; struct TYPE_5__* link; } ;
typedef TYPE_1__ nic_rule_node ;
typedef int nic_rule_match ;
typedef int nic_rule_action ;
struct TYPE_6__ {int nic_rules; } ;
typedef TYPE_2__ config_tree ;


 int ACTION_DROP ;
 int ACTION_IGNORE ;
 int ACTION_LISTEN ;
 int AF (int *) ;
 int AF_UNSPEC ;
 scalar_t__ HAVE_OPT (int ) ;
 TYPE_1__* HEAD_PFIFO (int ) ;
 int INSIST (int ) ;
 int INTERFACE ;
 int LOG_ERR ;
 int MATCH_ALL ;
 int MATCH_IFADDR ;
 int MATCH_IFNAME ;
 int MATCH_IPV4 ;
 int MATCH_IPV6 ;
 int MATCH_WILDCARD ;
 int NOVIRTUALIPS ;
 int SIZEOF_INADDR (int ) ;







 int add_nic_rule (int ,char*,int,int ) ;
 scalar_t__ current_time ;
 char* estrdup (char*) ;
 int exit (int) ;
 int fatal_error (char*,int) ;
 int free (char*) ;
 int is_ip_address (char*,int ,int *) ;
 int max (int,int) ;
 int min (int,int) ;
 int msyslog (int ,char*,char*) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;
 int timer_interfacetimeout (scalar_t__) ;

__attribute__((used)) static void
config_nic_rules(
 config_tree *ptree,
 int input_from_file
 )
{
 nic_rule_node * curr_node;
 sockaddr_u addr;
 nic_rule_match match_type;
 nic_rule_action action;
 char * if_name;
 char * pchSlash;
 int prefixlen;
 int addrbits;

 curr_node = HEAD_PFIFO(ptree->nic_rules);

 if (curr_node != ((void*)0)
     && (HAVE_OPT( NOVIRTUALIPS ) || HAVE_OPT( INTERFACE ))) {
  msyslog(LOG_ERR,
   "interface/nic rules are not allowed with --interface (-I) or --novirtualips (-L)%s",
   (input_from_file) ? ", exiting" : "");
  if (input_from_file)
   exit(1);
  else
   return;
 }

 for (; curr_node != ((void*)0); curr_node = curr_node->link) {
  prefixlen = -1;
  if_name = curr_node->if_name;
  if (if_name != ((void*)0))
   if_name = estrdup(if_name);

  switch (curr_node->match_class) {

  default:
   fatal_error("config_nic_rules: match-class-token=%d", curr_node->match_class);

  case 0:






   INSIST(if_name != ((void*)0));
   pchSlash = strchr(if_name, '/');
   if (pchSlash != ((void*)0))
    *pchSlash = '\0';
   if (is_ip_address(if_name, AF_UNSPEC, &addr)) {
    match_type = MATCH_IFADDR;
    if (pchSlash != ((void*)0)
        && 1 == sscanf(pchSlash + 1, "%d",
         &prefixlen)) {
     addrbits = 8 *
         SIZEOF_INADDR(AF(&addr));
     prefixlen = max(-1, prefixlen);
     prefixlen = min(prefixlen,
       addrbits);
    }
   } else {
    match_type = MATCH_IFNAME;
    if (pchSlash != ((void*)0))
     *pchSlash = '/';
   }
   break;

  case 134:
   match_type = MATCH_ALL;
   break;

  case 131:
   match_type = MATCH_IPV4;
   break;

  case 130:
   match_type = MATCH_IPV6;
   break;

  case 128:
   match_type = MATCH_WILDCARD;
   break;
  }

  switch (curr_node->action) {

  default:
   fatal_error("config_nic_rules: action-token=%d", curr_node->action);

  case 129:
   action = ACTION_LISTEN;
   break;

  case 132:
   action = ACTION_IGNORE;
   break;

  case 133:
   action = ACTION_DROP;
   break;
  }

  add_nic_rule(match_type, if_name, prefixlen,
        action);
  timer_interfacetimeout(current_time + 2);
  if (if_name != ((void*)0))
   free(if_name);
 }
}
