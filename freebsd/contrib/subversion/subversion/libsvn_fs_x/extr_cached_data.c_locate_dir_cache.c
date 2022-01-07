
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int change_set; int number; } ;
struct TYPE_10__ {TYPE_1__* data_rep; TYPE_3__ noderev_id; } ;
typedef TYPE_2__ svn_fs_x__noderev_t ;
typedef TYPE_3__ svn_fs_x__id_t ;
struct TYPE_12__ {int * dir_cache; } ;
typedef TYPE_4__ svn_fs_x__data_t ;
struct TYPE_13__ {TYPE_4__* fsap_data; } ;
typedef TYPE_5__ svn_fs_t ;
typedef int svn_cache__t ;
struct TYPE_9__ {TYPE_3__ id; } ;


 int SVN_FS_X__INVALID_CHANGE_SET ;
 int SVN_FS_X__ITEM_INDEX_UNUSED ;
 scalar_t__ svn_fs_x__is_txn (int ) ;

__attribute__((used)) static svn_cache__t *
locate_dir_cache(svn_fs_t *fs,
                 svn_fs_x__id_t *key,
                 svn_fs_x__noderev_t *noderev)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;

  if (!noderev->data_rep)
    {


      key->change_set = SVN_FS_X__INVALID_CHANGE_SET;
      key->number = SVN_FS_X__ITEM_INDEX_UNUSED;
    }
  else if (svn_fs_x__is_txn(noderev->noderev_id.change_set))
    {


      *key = noderev->noderev_id;
    }
  else
    {

      *key = noderev->data_rep->id;
    }

  return ffd->dir_cache;
}
