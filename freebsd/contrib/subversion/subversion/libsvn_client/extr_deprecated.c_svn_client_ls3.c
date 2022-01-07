
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct ls_baton {int * pool; int * locks; int * dirents; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_DIRENT_ALL ;
 void* apr_hash_make (int *) ;
 int store_dirent ;
 int * svn_client_list (char const*,int const*,int const*,int ,int ,int ,int ,struct ls_baton*,int *,int *) ;

svn_error_t *
svn_client_ls3(apr_hash_t **dirents,
               apr_hash_t **locks,
               const char *path_or_url,
               const svn_opt_revision_t *peg_revision,
               const svn_opt_revision_t *revision,
               svn_boolean_t recurse,
               svn_client_ctx_t *ctx,
               apr_pool_t *pool)
{
  struct ls_baton lb;

  *dirents = lb.dirents = apr_hash_make(pool);
  if (locks)
    *locks = lb.locks = apr_hash_make(pool);
  lb.pool = pool;

  return svn_client_list(path_or_url, peg_revision, revision, recurse,
                         SVN_DIRENT_ALL, locks != ((void*)0),
                         store_dirent, &lb, ctx, pool);
}
