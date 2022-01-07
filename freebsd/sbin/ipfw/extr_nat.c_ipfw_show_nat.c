
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nat_list_arg {int cmd; int is_all; } ;
struct nat44_cfg_nat {int dummy; } ;
typedef int nla ;
typedef int ipfw_obj_header ;
struct TYPE_2__ {scalar_t__ test_only; } ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IP_FW_NAT44_XGETCONFIG ;
 int IP_FW_NAT44_XGETLOG ;
 TYPE_1__ co ;
 int err (int ,char*,...) ;
 int errx (int ,char*) ;
 int free (int *) ;
 int memset (struct nat_list_arg*,int ,int) ;
 int nat_foreach (int ,struct nat_list_arg*,int) ;
 scalar_t__ nat_get_cmd (char*,int,int **) ;
 int nat_show_cfg (struct nat44_cfg_nat*,int *) ;
 int nat_show_data ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;

void
ipfw_show_nat(int ac, char **av)
{
 ipfw_obj_header *oh;
 char *name;
 int cmd;
 struct nat_list_arg nla;

 ac--;
 av++;

 if (co.test_only)
  return;


 cmd = 0;
 name = ((void*)0);
 for ( ; ac != 0; ac--, av++) {
  if (!strncmp(av[0], "config", strlen(av[0]))) {
   cmd = IP_FW_NAT44_XGETCONFIG;
   continue;
  }
  if (strcmp(av[0], "log") == 0) {
   cmd = IP_FW_NAT44_XGETLOG;
   continue;
  }
  if (name != ((void*)0))
   err(EX_USAGE,"only one instance name may be specified");
  name = av[0];
 }

 if (cmd == 0)
  errx(EX_USAGE, "Please specify action. Available: config,log");

 if (name == ((void*)0)) {
  memset(&nla, 0, sizeof(nla));
  nla.cmd = cmd;
  nla.is_all = 1;
  nat_foreach(nat_show_data, &nla, 1);
 } else {
  if (nat_get_cmd(name, cmd, &oh) != 0)
   err(EX_OSERR, "Error getting nat %s instance info", name);
  nat_show_cfg((struct nat44_cfg_nat *)(oh + 1), ((void*)0));
  free(oh);
 }
}
