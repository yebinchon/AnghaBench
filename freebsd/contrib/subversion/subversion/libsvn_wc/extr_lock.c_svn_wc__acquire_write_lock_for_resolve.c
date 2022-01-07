
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 char* apr_pstrdup (int *,char const*) ;
 int strcmp (char const*,char const*) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_wc__acquire_write_lock (char const**,TYPE_1__*,char const*,scalar_t__,int *,int *) ;
 int svn_wc__release_write_lock (TYPE_1__*,char const*,int *) ;
 int svn_wc__required_lock_for_resolve (char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__acquire_write_lock_for_resolve(const char **lock_root_abspath,
                                       svn_wc_context_t *wc_ctx,
                                       const char *local_abspath,
                                       apr_pool_t *result_pool,
                                       apr_pool_t *scratch_pool)
{
  svn_boolean_t locked = FALSE;
  const char *obtained_abspath;
  const char *requested_abspath = local_abspath;

  while (!locked)
    {
      const char *required_abspath;
      const char *child;

      SVN_ERR(svn_wc__acquire_write_lock(&obtained_abspath, wc_ctx,
                                         requested_abspath, FALSE,
                                         scratch_pool, scratch_pool));
      locked = TRUE;

      SVN_ERR(svn_wc__required_lock_for_resolve(&required_abspath,
                                                wc_ctx->db, local_abspath,
                                                scratch_pool, scratch_pool));





      child = svn_dirent_skip_ancestor(required_abspath, obtained_abspath);
      if (child && child[0])
        {
          SVN_ERR(svn_wc__release_write_lock(wc_ctx, obtained_abspath,
                                             scratch_pool));
          locked = FALSE;
          requested_abspath = required_abspath;
        }
      else
        {

          SVN_ERR_ASSERT(!strcmp(required_abspath, obtained_abspath)
                         || svn_dirent_skip_ancestor(obtained_abspath,
                                                     required_abspath));
        }
    }

  *lock_root_abspath = apr_pstrdup(result_pool, obtained_abspath);

  return SVN_NO_ERROR;
}
