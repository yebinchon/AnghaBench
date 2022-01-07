
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_list_arg {int cmd; int is_all; } ;
struct nat44_cfg_nat {int name; } ;
typedef int ipfw_obj_header ;


 int ENOENT ;


 int errno ;
 int free (int *) ;
 int nat_get_cmd (int ,int,int **) ;
 int nat_show_cfg (struct nat44_cfg_nat*,int *) ;
 int nat_show_log (struct nat44_cfg_nat*,int *) ;
 int warn (char*,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
nat_show_data(struct nat44_cfg_nat *cfg, void *arg)
{
 struct nat_list_arg *nla;
 ipfw_obj_header *oh;

 nla = (struct nat_list_arg *)arg;

 switch (nla->cmd) {
 case 129:
  if (nat_get_cmd(cfg->name, nla->cmd, &oh) != 0) {
   warnx("Error getting nat instance %s info", cfg->name);
   break;
  }
  nat_show_cfg((struct nat44_cfg_nat *)(oh + 1), ((void*)0));
  free(oh);
  break;
 case 128:
  if (nat_get_cmd(cfg->name, nla->cmd, &oh) == 0) {
   nat_show_log((struct nat44_cfg_nat *)(oh + 1), ((void*)0));
   free(oh);
   break;
  }

  if (nla->is_all != 0 && errno == ENOENT)
   break;
  warn("Error getting nat instance %s info", cfg->name);
  break;
 }

 return (0);
}
