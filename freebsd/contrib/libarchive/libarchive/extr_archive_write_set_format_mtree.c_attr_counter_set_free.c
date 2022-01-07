
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct att_counter_set {int flags_list; int mode_list; int gid_list; int uid_list; } ;
struct mtree_writer {struct att_counter_set acs; } ;


 int attr_counter_free (int *) ;

__attribute__((used)) static void
attr_counter_set_free(struct mtree_writer *mtree)
{
 struct att_counter_set *acs = &mtree->acs;

 attr_counter_free(&acs->uid_list);
 attr_counter_free(&acs->gid_list);
 attr_counter_free(&acs->mode_list);
 attr_counter_free(&acs->flags_list);
}
