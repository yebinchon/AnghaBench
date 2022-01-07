
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 int PATH_EXT_REV_LOCK ;
 char const* construct_proto_rev_path (int *,int ,int ,int *) ;

const char *
svn_fs_x__path_txn_proto_rev_lock(svn_fs_t *fs,
                                  svn_fs_x__txn_id_t txn_id,
                                  apr_pool_t *result_pool)
{
  return construct_proto_rev_path(fs, txn_id, PATH_EXT_REV_LOCK, result_pool);
}
