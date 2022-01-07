
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_5__ {int local_abspath; } ;
typedef TYPE_1__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int svn_client_conflict_option_id_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_CONFLICT_OPTION_NOT_APPLICABLE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_client_conflict_option_find_by_id (int *,int ) ;
 int svn_client_conflict_prop_get_resolution_options (int **,TYPE_1__*,int *,int *,int *) ;
 int svn_client_conflict_prop_resolve (TYPE_1__*,char const*,int *,int *,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;

svn_error_t *
svn_client_conflict_prop_resolve_by_id(
  svn_client_conflict_t *conflict,
  const char *propname,
  svn_client_conflict_option_id_t option_id,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  apr_array_header_t *resolution_options;
  svn_client_conflict_option_t *option;

  SVN_ERR(svn_client_conflict_prop_get_resolution_options(
            &resolution_options, conflict, ctx,
            scratch_pool, scratch_pool));
  option = svn_client_conflict_option_find_by_id(resolution_options,
                                                 option_id);
  if (option == ((void*)0))
    return svn_error_createf(SVN_ERR_CLIENT_CONFLICT_OPTION_NOT_APPLICABLE,
                             ((void*)0),
                             _("Inapplicable conflict resolution option "
                               "given for conflicted path '%s'"),
                             svn_dirent_local_style(conflict->local_abspath,
                                                    scratch_pool));
  SVN_ERR(svn_client_conflict_prop_resolve(conflict, propname, option, ctx,
                                           scratch_pool));

  return SVN_NO_ERROR;
}
