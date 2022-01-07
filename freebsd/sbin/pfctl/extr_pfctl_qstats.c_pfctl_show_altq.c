
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local_flags; int ifname; } ;
struct pf_altq_node {TYPE_1__ altq; struct pf_altq_node* next; } ;


 int PFALTQ_FLAG_IF_REMOVED ;
 int PF_OPT_SHOWALL ;
 int STAT_INTERVAL ;
 int altqsupport ;
 int fflush (int ) ;
 int pfctl_free_altq_node (struct pf_altq_node*) ;
 int pfctl_print_altq_node (int,struct pf_altq_node*,int ,int) ;
 int pfctl_print_title (char*) ;
 int pfctl_update_qstats (int,struct pf_altq_node**) ;
 int printf (char*) ;
 int sleep (int ) ;
 int stdout ;
 scalar_t__ strcmp (int ,char const*) ;

int
pfctl_show_altq(int dev, const char *iface, int opts, int verbose2)
{
 struct pf_altq_node *root = ((void*)0), *node;
 int nodes, dotitle = (opts & PF_OPT_SHOWALL);






 if ((nodes = pfctl_update_qstats(dev, &root)) < 0)
  return (-1);

 if (nodes == 0)
  printf("No queue in use\n");
 for (node = root; node != ((void*)0); node = node->next) {
  if (iface != ((void*)0) && strcmp(node->altq.ifname, iface))
   continue;
  if (dotitle) {
   pfctl_print_title("ALTQ:");
   dotitle = 0;
  }
  pfctl_print_altq_node(dev, node, 0, opts);
 }

 while (verbose2 && nodes > 0) {
  printf("\n");
  fflush(stdout);
  sleep(STAT_INTERVAL);
  if ((nodes = pfctl_update_qstats(dev, &root)) == -1)
   return (-1);
  for (node = root; node != ((void*)0); node = node->next) {
   if (iface != ((void*)0) && strcmp(node->altq.ifname, iface))
    continue;




   pfctl_print_altq_node(dev, node, 0, opts);
  }
 }
 pfctl_free_altq_node(root);
 return (0);
}
