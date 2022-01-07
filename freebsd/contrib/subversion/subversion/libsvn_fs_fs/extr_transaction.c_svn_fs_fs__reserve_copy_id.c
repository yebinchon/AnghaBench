
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_6__ {int number; int revision; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int read_next_ids (int *,int *,int *,TYPE_1__ const*,int *) ;
 int write_next_ids (int *,TYPE_1__ const*,int ,int ,int *) ;

svn_error_t *
svn_fs_fs__reserve_copy_id(svn_fs_fs__id_part_t *copy_id_p,
                           svn_fs_t *fs,
                           const svn_fs_fs__id_part_t *txn_id,
                           apr_pool_t *pool)
{
  apr_uint64_t node_id, copy_id;


  SVN_ERR(read_next_ids(&node_id, &copy_id, fs, txn_id, pool));


  copy_id_p->revision = SVN_INVALID_REVNUM;
  copy_id_p->number = copy_id;


  SVN_ERR(write_next_ids(fs, txn_id, node_id, ++copy_id, pool));

  return SVN_NO_ERROR;
}
