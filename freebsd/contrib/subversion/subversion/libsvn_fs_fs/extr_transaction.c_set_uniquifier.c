
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_12__ {int number; } ;
typedef TYPE_3__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int number; int noderev_txn_id; } ;
struct TYPE_13__ {TYPE_1__ uniquifier; int txn_id; } ;
typedef TYPE_4__ representation_t ;
struct TYPE_14__ {scalar_t__ format; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_REP_SHARING_FORMAT ;
 int * SVN_NO_ERROR ;
 int get_new_txn_node_id (TYPE_3__*,TYPE_2__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
set_uniquifier(svn_fs_t *fs,
               representation_t *rep,
               apr_pool_t *pool)
{
  svn_fs_fs__id_part_t temp;
  fs_fs_data_t *ffd = fs->fsap_data;

  if (ffd->format >= SVN_FS_FS__MIN_REP_SHARING_FORMAT)
    {
      SVN_ERR(get_new_txn_node_id(&temp, fs, &rep->txn_id, pool));
      rep->uniquifier.noderev_txn_id = rep->txn_id;
      rep->uniquifier.number = temp.number;
    }

  return SVN_NO_ERROR;
}
