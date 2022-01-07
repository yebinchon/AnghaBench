
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct diff_callbacks2_wrapper_baton {int baton; TYPE_1__* callbacks2; } ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_2__ {int * (* dir_props_changed ) (int *,int *,char const*,int const*,int *,int ) ;} ;


 int FALSE ;
 int * stub1 (int *,int *,char const*,int const*,int *,int ) ;

__attribute__((used)) static svn_error_t *
wrap_3to2_dir_props_changed(svn_wc_adm_access_t *adm_access,
                            svn_wc_notify_state_t *state,
                            svn_boolean_t *tree_conflicted,
                            const char *path,
                            const apr_array_header_t *propchanges,
                            apr_hash_t *originalprops,
                            void *diff_baton)
{
  struct diff_callbacks2_wrapper_baton *b = diff_baton;

  if (tree_conflicted)
    *tree_conflicted = FALSE;

  return b->callbacks2->dir_props_changed(adm_access, state, path, propchanges,
                                          originalprops, b->baton);
}
