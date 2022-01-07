
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
struct miscellaneous_get_args {char const* key; char const** val; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 int svn_fs_base__retry_txn (int *,int ,struct miscellaneous_get_args*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int txn_body_miscellaneous_get ;

svn_error_t *
svn_fs_base__miscellaneous_get(const char **val,
                               svn_fs_t *fs,
                               const char *key,
                               apr_pool_t *pool)
{
  struct miscellaneous_get_args mga;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  mga.key = key;
  mga.val = val;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_miscellaneous_get, &mga,
                                 FALSE, scratch_pool));
  if (*val)
    *val = apr_pstrdup(pool, *val);
  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
