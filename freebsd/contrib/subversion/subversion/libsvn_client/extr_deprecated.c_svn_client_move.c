
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_commit_info_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int _ (char*) ;
 int * svn_client_move2 (int **,char const*,char const*,int ,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_unspecified ;

svn_error_t *
svn_client_move(svn_client_commit_info_t **commit_info_p,
                const char *src_path,
                const svn_opt_revision_t *src_revision,
                const char *dst_path,
                svn_boolean_t force,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{







  if (src_revision->kind != svn_opt_revision_unspecified
      && src_revision->kind != svn_opt_revision_head)
    {
      return svn_error_create
        (SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
         _("Cannot specify revisions (except HEAD) with move operations"));
    }

  return svn_client_move2(commit_info_p, src_path, dst_path, force, ctx, pool);
}
