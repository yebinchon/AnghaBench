
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct diff_callbacks_wrapper_baton {int baton; TYPE_1__* callbacks; } ;
typedef int apr_hash_t ;
struct TYPE_6__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;
struct TYPE_5__ {int (* props_changed ) (int *,int *,char const*,TYPE_2__ const*,int *,int ) ;int (* file_added ) (int *,int *,char const*,char const*,char const*,int ,int ,char const*,char const*,int ) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int *,int *,char const*,char const*,char const*,int ,int ,char const*,char const*,int ) ;
 int stub2 (int *,int *,char const*,TYPE_2__ const*,int *,int ) ;

__attribute__((used)) static svn_error_t *
wrap_3to1_file_added(svn_wc_adm_access_t *adm_access,
                     svn_wc_notify_state_t *contentstate,
                     svn_wc_notify_state_t *propstate,
                     svn_boolean_t *tree_conflicted,
                     const char *path,
                     const char *tmpfile1,
                     const char *tmpfile2,
                     svn_revnum_t rev1,
                     svn_revnum_t rev2,
                     const char *mimetype1,
                     const char *mimetype2,
                     const apr_array_header_t *propchanges,
                     apr_hash_t *originalprops,
                     void *diff_baton)
{
  struct diff_callbacks_wrapper_baton *b = diff_baton;

  if (tree_conflicted)
    *tree_conflicted = FALSE;

  SVN_ERR(b->callbacks->file_added(adm_access, contentstate, path,
                                   tmpfile1, tmpfile2, rev1, rev2,
                                   mimetype1, mimetype2, b->baton));
  if (propchanges->nelts > 0)
    SVN_ERR(b->callbacks->props_changed(adm_access, propstate, path,
                                        propchanges, originalprops,
                                        b->baton));

  return SVN_NO_ERROR;
}
