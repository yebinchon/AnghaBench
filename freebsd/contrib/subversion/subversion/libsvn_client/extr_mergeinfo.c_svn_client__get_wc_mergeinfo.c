
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int * svn_mergeinfo_t ;
typedef scalar_t__ svn_mergeinfo_inheritance_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_15__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_1__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_make (int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 TYPE_1__* svn_client__parse_mergeinfo (int **,int ,char const*,int *,int *) ;
 int svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_is_root (char const*,int ) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_mergeinfo__add_suffix_to_mergeinfo (int **,int *,char const*,int *,int *) ;
 int svn_mergeinfo__remove_empty_rangelists (int *,int *) ;
 scalar_t__ svn_mergeinfo_explicit ;
 TYPE_1__* svn_mergeinfo_inheritable2 (int **,int *,int *,int ,int ,scalar_t__,int *,int *) ;
 scalar_t__ svn_mergeinfo_inherited ;
 scalar_t__ svn_mergeinfo_nearest_ancestor ;
 scalar_t__ svn_path_is_empty (char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;
 TYPE_1__* svn_wc__node_get_base (int *,scalar_t__*,int *,int *,int *,int *,int ,char const*,scalar_t__,int *,int *) ;
 TYPE_1__* svn_wc__node_get_changed_info (scalar_t__*,int *,int *,int ,char const*,int *,int *) ;
 TYPE_1__* svn_wc_check_root (scalar_t__*,scalar_t__*,int *,int ,char const*,int *) ;

svn_error_t *
svn_client__get_wc_mergeinfo(svn_mergeinfo_t *mergeinfo,
                             svn_boolean_t *inherited_p,
                             svn_mergeinfo_inheritance_t inherit,
                             const char *local_abspath,
                             const char *limit_abspath,
                             const char **walked_path,
                             svn_boolean_t ignore_invalid_mergeinfo,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *walk_relpath = "";
  svn_mergeinfo_t wc_mergeinfo;
  svn_revnum_t base_revision;
  apr_pool_t *iterpool;
  svn_boolean_t inherited;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  if (limit_abspath)
    SVN_ERR_ASSERT(svn_dirent_is_absolute(limit_abspath));

  SVN_ERR(svn_wc__node_get_base(((void*)0), &base_revision, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                ctx->wc_ctx, local_abspath,
                                TRUE ,
                                scratch_pool, scratch_pool));

  iterpool = svn_pool_create(scratch_pool);
  while (TRUE)
    {
      svn_pool_clear(iterpool);



      if (inherit == svn_mergeinfo_nearest_ancestor)
        {
          wc_mergeinfo = ((void*)0);
          inherit = svn_mergeinfo_inherited;
        }
      else
        {





          svn_error_t *err = svn_client__parse_mergeinfo(&wc_mergeinfo,
                                                         ctx->wc_ctx,
                                                         local_abspath,
                                                         result_pool,
                                                         iterpool);
          if ((ignore_invalid_mergeinfo || walk_relpath [0] != '\0')
              && err
              && err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {
              svn_error_clear(err);
              wc_mergeinfo = apr_hash_make(result_pool);
              break;
            }
          else
            {
              SVN_ERR(err);
            }
        }

      if (wc_mergeinfo == ((void*)0) &&
          inherit != svn_mergeinfo_explicit &&
          !svn_dirent_is_root(local_abspath, strlen(local_abspath)))
        {
          svn_boolean_t is_wc_root;
          svn_boolean_t is_switched;
          svn_revnum_t parent_base_rev;
          svn_revnum_t parent_changed_rev;


          if (limit_abspath && strcmp(limit_abspath, local_abspath) == 0)
            break;



          SVN_ERR(svn_wc_check_root(&is_wc_root, &is_switched, ((void*)0),
                                    ctx->wc_ctx, local_abspath, iterpool));
          if (is_wc_root || is_switched)
            break;



          walk_relpath = svn_relpath_join(svn_dirent_basename(local_abspath,
                                                              iterpool),
                                          walk_relpath, result_pool);
          local_abspath = svn_dirent_dirname(local_abspath, scratch_pool);

          SVN_ERR(svn_wc__node_get_base(((void*)0), &parent_base_rev, ((void*)0), ((void*)0),
                                        ((void*)0), ((void*)0),
                                        ctx->wc_ctx, local_abspath,
                                        TRUE ,
                                        scratch_pool, scratch_pool));




          SVN_ERR(svn_wc__node_get_changed_info(&parent_changed_rev,
                                                ((void*)0), ((void*)0),
                                                ctx->wc_ctx, local_abspath,
                                                scratch_pool,
                                                scratch_pool));






          if (SVN_IS_VALID_REVNUM(base_revision)
              && (base_revision < parent_changed_rev
                  || parent_base_rev < base_revision))
            break;


          continue;
        }
      break;
    }

  svn_pool_destroy(iterpool);

  if (svn_path_is_empty(walk_relpath))
    {

      inherited = FALSE;
      *mergeinfo = wc_mergeinfo;
    }
  else
    {

      if (wc_mergeinfo)
        {
          inherited = TRUE;
          SVN_ERR(svn_mergeinfo__add_suffix_to_mergeinfo(mergeinfo,
                                                         wc_mergeinfo,
                                                         walk_relpath,
                                                         result_pool,
                                                         scratch_pool));
        }
      else
        {
          inherited = FALSE;
          *mergeinfo = ((void*)0);
        }
    }

  if (walked_path)
    *walked_path = walk_relpath;



  if (inherited
      && apr_hash_count(*mergeinfo))
    {
      SVN_ERR(svn_mergeinfo_inheritable2(mergeinfo, *mergeinfo, ((void*)0),
                                         SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
                                         TRUE, result_pool, scratch_pool));
      svn_mergeinfo__remove_empty_rangelists(*mergeinfo, scratch_pool);
    }

  if (inherited_p)
    *inherited_p = inherited;

  return SVN_NO_ERROR;
}
