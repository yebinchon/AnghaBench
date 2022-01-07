
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_opt_revision_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_14__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_ENTRY_NOT_FOUND ;
 scalar_t__ SVN_ERR_UNVERSIONED_RESOURCE ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_1__* SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_1__* svn_client_propget4 (int **,char const*,char const*,int const*,int const*,scalar_t__*,int ,int const*,TYPE_2__*,int *,int *) ;
 TYPE_1__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 TYPE_1__* svn_wc__node_is_added (scalar_t__*,int ,char const*,int *) ;

svn_error_t *
svn_client_propget3(apr_hash_t **props,
                    const char *propname,
                    const char *path_or_url,
                    const svn_opt_revision_t *peg_revision,
                    const svn_opt_revision_t *revision,
                    svn_revnum_t *actual_revnum,
                    svn_depth_t depth,
                    const apr_array_header_t *changelists,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  const char *target;
  apr_hash_t *temp_props;
  svn_error_t *err;

  if (svn_path_is_url(path_or_url))
    target = path_or_url;
  else
    SVN_ERR(svn_dirent_get_absolute(&target, path_or_url, pool));

  err = svn_client_propget4(&temp_props, propname, target,
                            peg_revision, revision, actual_revnum,
                            depth, changelists, ctx, pool, pool);

  if (err && err->apr_err == SVN_ERR_UNVERSIONED_RESOURCE)
    {
      err->apr_err = SVN_ERR_ENTRY_NOT_FOUND;
      return svn_error_trace(err);
    }
  else
    SVN_ERR(err);

  if (actual_revnum
        && !svn_path_is_url(path_or_url)
        && !SVN_IS_VALID_REVNUM(*actual_revnum))
    {


      svn_boolean_t added;

      SVN_ERR(svn_wc__node_is_added(&added, ctx->wc_ctx, target, pool));
      if (added)
        *actual_revnum = 0;
    }


  if (!svn_path_is_url(path_or_url) && strcmp(target, path_or_url) != 0)
    {
      apr_hash_index_t *hi;

      *props = apr_hash_make(pool);
      for (hi = apr_hash_first(pool, temp_props); hi;
            hi = apr_hash_next(hi))
        {
          const char *abspath = apr_hash_this_key(hi);
          svn_string_t *value = apr_hash_this_val(hi);
          const char *relpath = svn_dirent_join(path_or_url,
                                     svn_dirent_skip_ancestor(target, abspath),
                                     pool);

          svn_hash_sets(*props, relpath, value);
        }
    }
  else
    *props = temp_props;

  return SVN_NO_ERROR;
}
