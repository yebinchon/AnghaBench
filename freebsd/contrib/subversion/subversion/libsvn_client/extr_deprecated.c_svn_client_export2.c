
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
 int TRUE ;
 int * svn_client_export3 (int *,char const*,char const*,TYPE_1__*,TYPE_1__*,int ,int ,int ,char const*,int *,int *) ;
 int svn_opt_revision_unspecified ;

svn_error_t *
svn_client_export2(svn_revnum_t *result_rev,
                   const char *from_path_or_url,
                   const char *to_path,
                   svn_opt_revision_t *revision,
                   svn_boolean_t force,
                   const char *native_eol,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  svn_opt_revision_t peg_revision;

  peg_revision.kind = svn_opt_revision_unspecified;

  return svn_client_export3(result_rev, from_path_or_url, to_path,
                            &peg_revision, revision, force, FALSE, TRUE,
                            native_eol, ctx, pool);
}
