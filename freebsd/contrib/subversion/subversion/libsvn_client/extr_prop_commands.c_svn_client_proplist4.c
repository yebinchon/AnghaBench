
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_proplist_receiver2_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 scalar_t__ SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC (scalar_t__) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_local_props (char const*,TYPE_1__ const*,scalar_t__,int const*,int,int ,void*,int *,int *) ;
 int get_remote_props (char const*,TYPE_1__ const*,TYPE_1__ const*,scalar_t__,int,int,int ,void*,int *,int *) ;
 TYPE_1__* svn_cl__rev_default_to_head_or_working (TYPE_1__ const*,char const*) ;
 TYPE_1__* svn_cl__rev_default_to_peg (TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_unknown ;
 scalar_t__ svn_opt_revision_unspecified ;
 scalar_t__ svn_opt_revision_working ;
 int svn_path_is_url (char const*) ;

svn_error_t *
svn_client_proplist4(const char *path_or_url,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *revision,
                     svn_depth_t depth,
                     const apr_array_header_t *changelists,
                     svn_boolean_t get_target_inherited_props,
                     svn_proplist_receiver2_t receiver,
                     void *receiver_baton,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *scratch_pool)
{
  svn_boolean_t local_explicit_props;
  svn_boolean_t local_iprops;

  peg_revision = svn_cl__rev_default_to_head_or_working(peg_revision,
                                                        path_or_url);
  revision = svn_cl__rev_default_to_peg(revision, peg_revision);

  if (depth == svn_depth_unknown)
    depth = svn_depth_empty;


  local_explicit_props =
    (! svn_path_is_url(path_or_url)
     && SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(peg_revision->kind)
     && SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(revision->kind));


  local_iprops =
    (get_target_inherited_props
     && local_explicit_props
     && (peg_revision->kind == svn_opt_revision_working
         || peg_revision->kind == svn_opt_revision_unspecified )
     && (revision->kind == svn_opt_revision_working
         || revision->kind == svn_opt_revision_unspecified ));

  if ((get_target_inherited_props && !local_iprops)
      || !local_explicit_props)
    {
      SVN_ERR(get_remote_props(path_or_url, peg_revision, revision, depth,
                               !local_explicit_props,
                               (get_target_inherited_props && !local_iprops),
                               receiver, receiver_baton, ctx, scratch_pool));
    }

  if (local_explicit_props)
    {
      SVN_ERR(get_local_props(path_or_url, revision, depth, changelists,
                              local_iprops, receiver, receiver_baton, ctx,
                              scratch_pool));
    }

  return SVN_NO_ERROR;
}
