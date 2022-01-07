
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_editor_t ;
struct TYPE_3__ {int fetch_baton; int * fetch_base_func; int * fetch_props_func; int * fetch_kind_func; } ;
typedef TYPE_1__ svn_delta_shim_callbacks_t ;
typedef int svn_delta_editor_t ;
typedef int svn_delta__unlock_func_t ;
typedef int svn_boolean_t ;
struct svn_delta__extra_baton {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_palloc (int *,int) ;
 int svn_delta__delta_from_editor (int const**,void**,int *,int ,void*,int *,char const*,char const*,int *,int ,int *,int ,struct svn_delta__extra_baton*,int *) ;
 int svn_delta__editor_from_delta (int **,struct svn_delta__extra_baton**,int *,void**,int const*,void*,int *,char const*,char const*,int *,int *,int *,int ,int *,int ,int *,int *) ;

svn_error_t *
svn_editor__insert_shims(const svn_delta_editor_t **deditor_out,
                         void **dedit_baton_out,
                         const svn_delta_editor_t *deditor_in,
                         void *dedit_baton_in,
                         const char *repos_root,
                         const char *base_relpath,
                         svn_delta_shim_callbacks_t *shim_callbacks,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{


  *deditor_out = deditor_in;
  *dedit_baton_out = dedit_baton_in;
  return SVN_NO_ERROR;
}
