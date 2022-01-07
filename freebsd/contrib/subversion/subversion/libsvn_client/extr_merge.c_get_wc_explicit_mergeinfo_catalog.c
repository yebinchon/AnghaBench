
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
struct TYPE_18__ {int member_0; } ;
struct TYPE_20__ {TYPE_1__ member_1; int member_0; } ;
typedef TYPE_3__ svn_opt_revision_t ;
typedef int * svn_mergeinfo_t ;
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_22__ {int wc_ctx; } ;
typedef TYPE_5__ svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 TYPE_4__* SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int svn_client_propget5 (int **,int *,int ,char const*,TYPE_3__*,TYPE_3__*,int *,int ,int *,TYPE_5__*,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 TYPE_4__* svn_error_createf (int ,TYPE_4__*,int ,int ) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 scalar_t__ svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 TYPE_4__* svn_mergeinfo_parse (int **,int ,int *) ;
 int svn_opt_revision_working ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__externals_defined_below (int **,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_wc_explicit_mergeinfo_catalog(apr_hash_t **subtrees_with_mergeinfo,
                                  const char *target_abspath,
                                  svn_depth_t depth,
                                  svn_client_ctx_t *ctx,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_opt_revision_t working_revision = { svn_opt_revision_working, { 0 } };
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;
  apr_hash_t *externals;

  SVN_ERR(svn_client_propget5(subtrees_with_mergeinfo, ((void*)0),
                              SVN_PROP_MERGEINFO, target_abspath,
                              &working_revision, &working_revision, ((void*)0),
                              depth, ((void*)0), ctx, result_pool, scratch_pool));

  SVN_ERR(svn_wc__externals_defined_below(&externals, ctx->wc_ctx,
                                          target_abspath, scratch_pool,
                                          scratch_pool));


  for (hi = apr_hash_first(scratch_pool, *subtrees_with_mergeinfo);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *wc_path = apr_hash_this_key(hi);
      svn_string_t *mergeinfo_string = apr_hash_this_val(hi);
      svn_mergeinfo_t mergeinfo;
      svn_error_t *err;



      if (svn_hash_gets(externals, wc_path))
        {
          svn_hash_sets(*subtrees_with_mergeinfo, wc_path, ((void*)0));
          continue;
        }

      svn_pool_clear(iterpool);

      err = svn_mergeinfo_parse(&mergeinfo, mergeinfo_string->data,
                                result_pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {
              err = svn_error_createf(
                SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING, err,
                _("Invalid mergeinfo detected on '%s', "
                  "merge tracking not possible"),
                svn_dirent_local_style(wc_path, scratch_pool));
            }
          return svn_error_trace(err);
        }
      svn_hash_sets(*subtrees_with_mergeinfo, wc_path, mergeinfo);
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
