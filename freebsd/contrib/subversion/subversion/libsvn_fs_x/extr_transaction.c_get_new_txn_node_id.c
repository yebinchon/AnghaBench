
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_3__ {int number; int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_next_ids (int *,int *,int *,int ,int *) ;
 int svn_fs_x__change_set_by_txn (int ) ;
 int write_next_ids (int *,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_new_txn_node_id(svn_fs_x__id_t *node_id_p,
                    svn_fs_t *fs,
                    svn_fs_x__txn_id_t txn_id,
                    apr_pool_t *scratch_pool)
{
  apr_uint64_t node_id, copy_id;


  SVN_ERR(read_next_ids(&node_id, &copy_id, fs, txn_id, scratch_pool));

  node_id_p->change_set = svn_fs_x__change_set_by_txn(txn_id);
  node_id_p->number = node_id;

  SVN_ERR(write_next_ids(fs, txn_id, ++node_id, copy_id, scratch_pool));

  return SVN_NO_ERROR;
}
