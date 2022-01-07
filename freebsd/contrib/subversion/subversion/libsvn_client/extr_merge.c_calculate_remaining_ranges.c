
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_rangelist_t ;
typedef int svn_ra_session_t ;
typedef scalar_t__ svn_mergeinfo_t ;
struct TYPE_26__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_27__ {int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
struct TYPE_28__ {scalar_t__ rev; int url; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
struct TYPE_29__ {int abspath; TYPE_1__* remaining_ranges; } ;
typedef TYPE_5__ svn_client__merge_path_t ;
typedef int svn_boolean_t ;
struct TYPE_30__ {TYPE_4__* loc1; TYPE_4__* loc2; int ancestral; } ;
typedef TYPE_6__ merge_source_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_25__ {scalar_t__ nelts; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED ;
 scalar_t__ SVN_ERR_CLIENT_UNRELATED_RESOURCES ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int filter_merged_revisions (TYPE_5__*,TYPE_5__*,char const*,int *,scalar_t__,scalar_t__,int ,int *,TYPE_3__*,int *,int *) ;
 scalar_t__ strcmp (int ,char const*) ;
 char* svn_client__pathrev_fspath (TYPE_4__ const*,int *) ;
 TYPE_2__* svn_client__repos_location (TYPE_4__**,int *,TYPE_4__*,scalar_t__,TYPE_3__*,int *,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_create (int ,int *,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int * svn_hash_gets (scalar_t__,char const*) ;
 int svn_rangelist_remove (int **,int const*,int *,int ,int *) ;
 int svn_wc__node_get_base (int *,scalar_t__*,int *,int *,int *,int *,int ,int ,int ,int *,int *) ;
 int svn_wc__node_get_url (char const**,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
calculate_remaining_ranges(svn_client__merge_path_t *parent,
                           svn_client__merge_path_t *child,
                           const merge_source_t *source,
                           svn_mergeinfo_t target_mergeinfo,
                           const apr_array_header_t *implicit_src_gap,
                           svn_boolean_t child_inherits_implicit,
                           svn_ra_session_t *ra_session,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const svn_client__pathrev_t *primary_src
    = (source->loc1->rev < source->loc2->rev) ? source->loc2 : source->loc1;
  const char *mergeinfo_path = svn_client__pathrev_fspath(primary_src,
                                                          scratch_pool);


  svn_rangelist_t *target_rangelist;
  svn_revnum_t child_base_revision;




  SVN_ERR_ASSERT(source->ancestral);
  if (target_mergeinfo)
    target_rangelist = svn_hash_gets(target_mergeinfo, mergeinfo_path);
  else
    target_rangelist = ((void*)0);
  if (implicit_src_gap && target_rangelist)
    {




      SVN_ERR(svn_rangelist_remove(&target_rangelist,
                                   implicit_src_gap, target_rangelist,
                                   FALSE, result_pool));
    }



  SVN_ERR(filter_merged_revisions(parent, child, mergeinfo_path,
                                  target_rangelist,
                                  source->loc1->rev, source->loc2->rev,
                                  child_inherits_implicit,
                                  ra_session, ctx, result_pool,
                                  scratch_pool));
  SVN_ERR(svn_wc__node_get_base(((void*)0), &child_base_revision,
                                ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                ctx->wc_ctx, child->abspath,
                                TRUE ,
                                scratch_pool, scratch_pool));


  if (SVN_IS_VALID_REVNUM(child_base_revision)
      && ((child->remaining_ranges)->nelts == 0)
      && (source->loc2->rev < source->loc1->rev)
      && (child_base_revision <= source->loc2->rev))
    {


      svn_error_t *err;
      svn_client__pathrev_t *start_loc;

      err = svn_client__repos_location(&start_loc,
                                       ra_session,
                                       source->loc1,
                                       child_base_revision,
                                       ctx, scratch_pool, scratch_pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_FS_NOT_FOUND
              || err->apr_err == SVN_ERR_CLIENT_UNRELATED_RESOURCES)
            svn_error_clear(err);
          else
            return svn_error_trace(err);
        }
      else
        {
          const char *url;

          SVN_ERR(svn_wc__node_get_url(&url, ctx->wc_ctx, child->abspath,
                                       scratch_pool, scratch_pool));
          if (strcmp(start_loc->url, url) == 0)
            return svn_error_create(SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED, ((void*)0),
                                    _("Cannot reverse-merge a range from a "
                                      "path's own future history; try "
                                      "updating first"));
        }
    }

  return SVN_NO_ERROR;
}
