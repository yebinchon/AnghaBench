
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_6__ {int abspath; scalar_t__ implicit_mergeinfo; } ;
typedef TYPE_1__ svn_client__merge_path_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int MAX (int ,int ) ;
 int MIN (int ,int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_full_mergeinfo (int *,scalar_t__*,int *,int ,int *,int ,int ,int ,int *,int *,int *) ;
 int inherit_implicit_mergeinfo_from_parent (TYPE_1__*,TYPE_1__*,int ,int ,int *,int *,int *,int *) ;
 int svn_mergeinfo_inherited ;

__attribute__((used)) static svn_error_t *
ensure_implicit_mergeinfo(svn_client__merge_path_t *parent,
                          svn_client__merge_path_t *child,
                          svn_boolean_t child_inherits_parent,
                          svn_revnum_t revision1,
                          svn_revnum_t revision2,
                          svn_ra_session_t *ra_session,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{



  if (child->implicit_mergeinfo)
    return SVN_NO_ERROR;

  if (child_inherits_parent)
    SVN_ERR(inherit_implicit_mergeinfo_from_parent(parent,
                                                   child,
                                                   revision1,
                                                   revision2,
                                                   ra_session,
                                                   ctx,
                                                   result_pool,
                                                   scratch_pool));
  else
    SVN_ERR(get_full_mergeinfo(((void*)0),
                               &(child->implicit_mergeinfo),
                               ((void*)0), svn_mergeinfo_inherited,
                               ra_session, child->abspath,
                               MAX(revision1, revision2),
                               MIN(revision1, revision2),
                               ctx, result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
