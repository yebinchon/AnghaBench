
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_host {scalar_t__ af; int * ifname; struct node_host* next; } ;


 scalar_t__ AF_LINK ;
 int IFNAMSIZ ;
 struct node_host* calloc (int,int) ;
 int err (int,char*) ;
 int get_query_socket () ;
 int ifa_load () ;
 struct node_host* iftab ;
 scalar_t__ is_a_group (char*) ;
 int * strdup (char*) ;
 int strncmp (int *,char*,int ) ;

struct node_host *
ifa_exists(char *ifa_name)
{
 struct node_host *n;
 int s;

 if (iftab == ((void*)0))
  ifa_load();


 s = get_query_socket();
 if (is_a_group(ifa_name)) {

  if ((n = calloc(1, sizeof(*n))) == ((void*)0))
   err(1, "calloc");
  if ((n->ifname = strdup(ifa_name)) == ((void*)0))
   err(1, "strdup");
  return (n);
 }

 for (n = iftab; n; n = n->next) {
  if (n->af == AF_LINK && !strncmp(n->ifname, ifa_name, IFNAMSIZ))
   return (n);
 }

 return (((void*)0));
}
