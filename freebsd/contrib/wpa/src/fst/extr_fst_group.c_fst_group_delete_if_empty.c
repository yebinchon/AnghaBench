
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_group {int dummy; } ;
typedef int Boolean ;


 int fst_group_delete (struct fst_group*) ;
 int fst_group_has_ifaces (struct fst_group*) ;
 int fst_session_global_get_first_by_group (struct fst_group*) ;

Boolean fst_group_delete_if_empty(struct fst_group *group)
{
 Boolean is_empty = !fst_group_has_ifaces(group) &&
  !fst_session_global_get_first_by_group(group);

 if (is_empty)
  fst_group_delete(group);

 return is_empty;
}
