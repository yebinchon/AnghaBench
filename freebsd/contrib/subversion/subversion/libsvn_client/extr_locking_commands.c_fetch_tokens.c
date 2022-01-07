
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_ra_session_t ;
struct TYPE_3__ {int token; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_MISSING_LOCK_TOKEN ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_pstrdup (int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_hash_sets (int *,char const*,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_get_lock (int *,TYPE_1__**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
fetch_tokens(svn_ra_session_t *ra_session, apr_hash_t *path_tokens,
             apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(pool);

  for (hi = apr_hash_first(pool, path_tokens); hi; hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      svn_lock_t *lock;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_ra_get_lock(ra_session, &lock, path, iterpool));

      if (! lock)
        return svn_error_createf
          (SVN_ERR_CLIENT_MISSING_LOCK_TOKEN, ((void*)0),
           _("'%s' is not locked"), path);

      svn_hash_sets(path_tokens, path, apr_pstrdup(pool, lock->token));
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
