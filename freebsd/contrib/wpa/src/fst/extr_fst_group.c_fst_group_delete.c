
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {int dummy; } ;
struct fst_group {int ifaces; int global_groups_lentry; } ;


 int MSG_DEBUG ;
 int WPA_ASSERT (int ) ;
 int dl_list_del (int *) ;
 int dl_list_empty (int *) ;
 int foreach_fst_ctrl_call (int ,struct fst_group*) ;
 int fst_printf_group (struct fst_group*,int ,char*) ;
 int fst_session_delete (struct fst_session*) ;
 struct fst_session* fst_session_global_get_first_by_group (struct fst_group*) ;
 int on_group_deleted ;
 int os_free (struct fst_group*) ;

void fst_group_delete(struct fst_group *group)
{
 struct fst_session *s;

 dl_list_del(&group->global_groups_lentry);
 WPA_ASSERT(dl_list_empty(&group->ifaces));
 foreach_fst_ctrl_call(on_group_deleted, group);
 fst_printf_group(group, MSG_DEBUG, "instance deleted");
 while ((s = fst_session_global_get_first_by_group(group)) != ((void*)0))
  fst_session_delete(s);
 os_free(group);
}
