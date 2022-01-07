
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
struct TYPE_6__ {int url; } ;
struct TYPE_5__ {char const* abspath; TYPE_4__ loc; } ;
typedef TYPE_1__ merge_target_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_UNRELATED_RESOURCES ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int check_same_repos (int *,int ,TYPE_4__*,int ,int ,int *) ;
 int open_target_wc (TYPE_1__**,char const*,int ,int ,int ,int *,int *,int *) ;
 int svn_client__ra_session_from_path2 (int **,int **,char const*,int *,int const*,int const*,int *,int *) ;
 int svn_client_open_ra_session2 (int **,int ,char const*,int *,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
open_reintegrate_source_and_target(svn_ra_session_t **source_ra_session_p,
                                   svn_client__pathrev_t **source_loc_p,
                                   svn_ra_session_t **target_ra_session_p,
                                   merge_target_t **target_p,
                                   const char *source_path_or_url,
                                   const svn_opt_revision_t *source_peg_revision,
                                   const char *target_abspath,
                                   svn_client_ctx_t *ctx,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_client__pathrev_t *source_loc;
  merge_target_t *target;



  SVN_ERR(open_target_wc(&target, target_abspath,
                         FALSE, FALSE, FALSE,
                         ctx, scratch_pool, scratch_pool));
  if (! target->loc.url)
    return svn_error_createf(SVN_ERR_CLIENT_UNRELATED_RESOURCES, ((void*)0),
                             _("Can't reintegrate into '%s' because it is "
                               "locally added and therefore not related to "
                               "the merge source"),
                             svn_dirent_local_style(target->abspath,
                                                    scratch_pool));

  SVN_ERR(svn_client_open_ra_session2(target_ra_session_p,
                                      target->loc.url, target->abspath,
                                      ctx, result_pool, scratch_pool));

  SVN_ERR(svn_client__ra_session_from_path2(
            source_ra_session_p, &source_loc,
            source_path_or_url, ((void*)0), source_peg_revision, source_peg_revision,
            ctx, result_pool));



  SVN_ERR(check_same_repos(source_loc,
                           svn_dirent_local_style(source_path_or_url,
                                                  scratch_pool),
                           &target->loc,
                           svn_dirent_local_style(target->abspath,
                                                  scratch_pool),
                           TRUE , scratch_pool));

  *source_loc_p = source_loc;
  *target_p = target;
  return SVN_NO_ERROR;
}
