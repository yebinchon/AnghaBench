
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ number; int change_set; } ;
struct TYPE_13__ {TYPE_5__* data_rep; TYPE_3__* prop_rep; TYPE_1__ noderev_id; } ;
typedef TYPE_6__ svn_fs_x__noderev_t ;
typedef int svn_boolean_t ;
struct TYPE_11__ {int change_set; } ;
struct TYPE_12__ {TYPE_4__ id; } ;
struct TYPE_9__ {int change_set; } ;
struct TYPE_10__ {TYPE_2__ id; } ;


 int FALSE ;
 scalar_t__ SVN_FS_X__ITEM_INDEX_ROOT_NODE ;
 int TRUE ;
 scalar_t__ svn_fs_x__is_txn (int ) ;

svn_boolean_t
svn_fs_x__is_fresh_txn_root(svn_fs_x__noderev_t *noderev)
{

  if (noderev->noderev_id.number != SVN_FS_X__ITEM_INDEX_ROOT_NODE)
    return FALSE;


  if (!svn_fs_x__is_txn(noderev->noderev_id.change_set))
    return FALSE;



  if (noderev->prop_rep && svn_fs_x__is_txn(noderev->prop_rep->id.change_set))
    return FALSE;



  if (noderev->data_rep && svn_fs_x__is_txn(noderev->data_rep->id.change_set))
    return FALSE;


  return TRUE;
}
