
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_group {int global_groups_lentry; int group_id; int ifaces; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int dl_list_add_tail (int *,int *) ;
 int dl_list_init (int *) ;
 int foreach_fst_ctrl_call (int ,struct fst_group*) ;
 int fst_global_groups_list ;
 int fst_printf (int ,char*,char const*) ;
 int fst_printf_group (struct fst_group*,int ,char*) ;
 int on_group_created ;
 int os_strlcpy (int ,char const*,int) ;
 struct fst_group* os_zalloc (int) ;

struct fst_group * fst_group_create(const char *group_id)
{
 struct fst_group *g;

 g = os_zalloc(sizeof(*g));
 if (g == ((void*)0)) {
  fst_printf(MSG_ERROR, "%s: Cannot alloc group", group_id);
  return ((void*)0);
 }

 dl_list_init(&g->ifaces);
 os_strlcpy(g->group_id, group_id, sizeof(g->group_id));

 dl_list_add_tail(&fst_global_groups_list, &g->global_groups_lentry);
 fst_printf_group(g, MSG_DEBUG, "instance created");

 foreach_fst_ctrl_call(on_group_created, g);

 return g;
}
