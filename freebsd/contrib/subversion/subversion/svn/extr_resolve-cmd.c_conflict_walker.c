
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
struct conflict_walker_baton {scalar_t__ quit; int ctx; int conflict_stats; int pb; int path_prefix; int editor_cmd; int accept_which; int printed_summary; int external_failed; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CANCELLED ;
 int * SVN_NO_ERROR ;
 int svn_cl__resolve_conflict (scalar_t__*,int *,int *,int *,int ,int ,int ,int ,int ,int ,int *) ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
conflict_walker(void *baton, svn_client_conflict_t *conflict,
                apr_pool_t *scratch_pool)
{
  struct conflict_walker_baton *cwb = baton;

  SVN_ERR(svn_cl__resolve_conflict(&cwb->quit, &cwb->external_failed,
                                   &cwb->printed_summary, conflict,
                                   cwb->accept_which, cwb->editor_cmd,
                                   cwb->path_prefix, cwb->pb,
                                   cwb->conflict_stats,
                                   cwb->ctx, scratch_pool));
  if (cwb->quit)
    return svn_error_create(SVN_ERR_CANCELLED, ((void*)0), ((void*)0));

  return SVN_NO_ERROR;
}
