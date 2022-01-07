
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct diff_callbacks_wrapper_baton {int baton; TYPE_1__* callbacks; } ;
struct TYPE_2__ {int * (* dir_added ) (int *,int *,char const*,int ,int ) ;} ;


 int FALSE ;
 int * stub1 (int *,int *,char const*,int ,int ) ;

__attribute__((used)) static svn_error_t *
wrap_3to1_dir_added(svn_wc_adm_access_t *adm_access,
                    svn_wc_notify_state_t *state,
                    svn_boolean_t *tree_conflicted,
                    const char *path,
                    svn_revnum_t rev,
                    void *diff_baton)
{
  struct diff_callbacks_wrapper_baton *b = diff_baton;

  if (tree_conflicted)
    *tree_conflicted = FALSE;

  return b->callbacks->dir_added(adm_access, state, path, rev, b->baton);
}
