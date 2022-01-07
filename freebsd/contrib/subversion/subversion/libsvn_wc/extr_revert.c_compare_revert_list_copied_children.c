
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_revert_list_copied_child_info_t ;


 int svn_path_compare_paths (int ,int ) ;

__attribute__((used)) static int
compare_revert_list_copied_children(const void *a, const void *b)
{
  const svn_wc__db_revert_list_copied_child_info_t * const *ca = a;
  const svn_wc__db_revert_list_copied_child_info_t * const *cb = b;
  int i;

  i = svn_path_compare_paths(ca[0]->abspath, cb[0]->abspath);



  return -i;
}
