
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_state_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int svn_wc_notify_state_unknown ;

__attribute__((used)) static svn_error_t *
wrap_3to1or2_dir_closed(svn_wc_adm_access_t *adm_access,
                        svn_wc_notify_state_t *propstate,
                        svn_wc_notify_state_t *contentstate,
                        svn_boolean_t *tree_conflicted,
                        const char *path,
                        void *diff_baton)
{
  if (contentstate)
    *contentstate = svn_wc_notify_state_unknown;
  if (propstate)
    *propstate = svn_wc_notify_state_unknown;
  if (tree_conflicted)
    *tree_conflicted = FALSE;

  return SVN_NO_ERROR;
}
