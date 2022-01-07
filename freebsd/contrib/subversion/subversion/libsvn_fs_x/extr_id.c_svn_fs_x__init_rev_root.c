
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int number; int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;


 int SVN_FS_X__ITEM_INDEX_ROOT_NODE ;
 int svn_fs_x__change_set_by_rev (int ) ;

void
svn_fs_x__init_rev_root(svn_fs_x__id_t *noderev_id,
                        svn_revnum_t rev)
{
  noderev_id->change_set = svn_fs_x__change_set_by_rev(rev);
  noderev_id->number = SVN_FS_X__ITEM_INDEX_ROOT_NODE;
}
