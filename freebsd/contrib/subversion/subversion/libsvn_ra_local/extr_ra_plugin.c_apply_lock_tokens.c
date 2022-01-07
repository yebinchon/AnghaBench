
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 void* apr_hash_this_key (int *) ;
 char* apr_hash_this_val (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 int svn_fs_access_add_lock_token2 (int *,char const*,char const*) ;
 int svn_fs_get_access (int **,int *) ;
 char* svn_fspath__join (char const*,void const*,int *) ;

__attribute__((used)) static svn_error_t *
apply_lock_tokens(svn_fs_t *fs,
                  const char *fspath_base,
                  apr_hash_t *lock_tokens,
                  apr_pool_t *access_pool,
                  apr_pool_t *scratch_pool)
{
  if (lock_tokens)
    {
      svn_fs_access_t *access_ctx;

      SVN_ERR(svn_fs_get_access(&access_ctx, fs));



      if (access_ctx)
        {
          apr_hash_index_t *hi;




          for (hi = apr_hash_first(scratch_pool, lock_tokens); hi;
               hi = apr_hash_next(hi))
            {
              const void *relpath = apr_hash_this_key(hi);
              const char *token = apr_hash_this_val(hi);
              const char *fspath;


              fspath = svn_fspath__join(fspath_base, relpath, access_pool);


              token = apr_pstrdup(access_pool, token);

              SVN_ERR(svn_fs_access_add_lock_token2(access_ctx, fspath,
                                                    token));
            }
        }
    }

  return SVN_NO_ERROR;
}
