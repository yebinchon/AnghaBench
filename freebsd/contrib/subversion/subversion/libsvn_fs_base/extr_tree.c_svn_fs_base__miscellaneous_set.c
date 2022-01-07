
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
struct miscellaneous_set_args {char const* key; char const* val; } ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_fs_base__retry_txn (int *,int ,struct miscellaneous_set_args*,int ,int *) ;
 int txn_body_miscellaneous_set ;

svn_error_t *
svn_fs_base__miscellaneous_set(svn_fs_t *fs,
                               const char *key,
                               const char *val,
                               apr_pool_t *pool)
{
  struct miscellaneous_set_args msa;
  msa.key = key;
  msa.val = val;

  return svn_fs_base__retry_txn(fs, txn_body_miscellaneous_set, &msa,
                                TRUE, pool);
}
