
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int svn_client_checkout2 (int *,char const*,char const*,TYPE_1__*,TYPE_1__ const*,int ,int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_opt_revision_unspecified ;

svn_error_t *
svn_client_checkout(svn_revnum_t *result_rev,
                    const char *URL,
                    const char *path,
                    const svn_opt_revision_t *revision,
                    svn_boolean_t recurse,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  svn_opt_revision_t peg_revision;

  peg_revision.kind = svn_opt_revision_unspecified;

  return svn_error_trace(svn_client_checkout2(result_rev, URL, path,
                                              &peg_revision, revision, recurse,
                                              FALSE, ctx, pool));
}
