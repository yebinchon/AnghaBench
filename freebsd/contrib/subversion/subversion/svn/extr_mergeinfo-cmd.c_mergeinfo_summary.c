
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int mergeinfo_diagram (char const*,char const*,char const*,char const*,int ,int ,int ,int ,char const*,int,int,int *) ;
 int svn_client_get_merging_summary (int*,char const**,int *,char const**,int *,char const**,int *,char const**,int *,char const**,char const*,TYPE_1__ const*,char const*,TYPE_1__ const*,int *,int *,int *) ;
 scalar_t__ svn_opt_revision_base ;
 scalar_t__ svn_opt_revision_unspecified ;
 scalar_t__ svn_opt_revision_working ;
 int svn_path_is_url (char const*) ;

__attribute__((used)) static svn_error_t *
mergeinfo_summary(
                  const char *source_path_or_url,
                  const svn_opt_revision_t *source_revision,
                  const char *target_path_or_url,
                  const svn_opt_revision_t *target_revision,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  const char *yca_url, *base_url, *right_url, *target_url;
  svn_revnum_t yca_rev, base_rev, right_rev, target_rev;
  const char *repos_root_url;
  svn_boolean_t target_is_wc, is_reintegration;

  target_is_wc = (! svn_path_is_url(target_path_or_url))
                 && (target_revision->kind == svn_opt_revision_unspecified
                     || target_revision->kind == svn_opt_revision_working
                     || target_revision->kind == svn_opt_revision_base);
  SVN_ERR(svn_client_get_merging_summary(
            &is_reintegration,
            &yca_url, &yca_rev,
            &base_url, &base_rev,
            &right_url, &right_rev,
            &target_url, &target_rev,
            &repos_root_url,
            source_path_or_url, source_revision,
            target_path_or_url, target_revision,
            ctx, pool, pool));

  SVN_ERR(mergeinfo_diagram(yca_url, base_url, right_url, target_url,
                            yca_rev, base_rev, right_rev, target_rev,
                            repos_root_url, target_is_wc, is_reintegration,
                            pool));

  return SVN_NO_ERROR;
}
