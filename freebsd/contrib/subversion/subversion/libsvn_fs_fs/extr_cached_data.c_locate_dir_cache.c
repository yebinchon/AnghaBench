
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_cache__t ;
struct TYPE_12__ {int second; int revision; } ;
typedef TYPE_3__ pair_cache_key_t ;
struct TYPE_13__ {TYPE_1__* data_rep; int id; } ;
typedef TYPE_4__ node_revision_t ;
struct TYPE_14__ {int * dir_cache; int * txn_dir_cache; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_15__ {void* data; } ;
struct TYPE_10__ {int item_index; int revision; int txn_id; } ;


 scalar_t__ svn_fs_fs__id_txn_used (int *) ;
 TYPE_6__* svn_fs_fs__id_unparse (int ,int *) ;

__attribute__((used)) static svn_cache__t *
locate_dir_cache(svn_fs_t *fs,
                 const void **key,
                 pair_cache_key_t *pair_key,
                 node_revision_t *noderev,
                 apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  if (!noderev->data_rep)
    {


      *key = ((void*)0);
      return ffd->dir_cache;
    }

  if (svn_fs_fs__id_txn_used(&noderev->data_rep->txn_id))
    {

      *key = svn_fs_fs__id_unparse(noderev->id, pool)->data;

      return ffd->txn_dir_cache;
    }
  else
    {

      pair_key->revision = noderev->data_rep->revision;
      pair_key->second = noderev->data_rep->item_index;
      *key = pair_key;

      return ffd->dir_cache;
    }
}
