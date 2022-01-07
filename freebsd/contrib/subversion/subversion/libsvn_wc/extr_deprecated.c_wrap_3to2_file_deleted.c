
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
struct TYPE_2__ {int * (* file_deleted ) (int *,int *,char const*,char const*,char const*,char const*,char const*,int *,int ) ;} ;


 int FALSE ;
 int * stub1 (int *,int *,char const*,char const*,char const*,char const*,char const*,int *,int ) ;

__attribute__((used)) static svn_error_t *
wrap_3to2_file_deleted(svn_wc_adm_access_t *adm_access,
                       svn_wc_notify_state_t *state,
                       svn_boolean_t *tree_conflicted,
                       const char *path,
                       const char *tmpfile1,
                       const char *tmpfile2,
                       const char *mimetype1,
                       const char *mimetype2,
                       apr_hash_t *originalprops,
                       void *diff_baton)
{
  struct diff_callbacks2_wrapper_baton *b = diff_baton;

  if (tree_conflicted)
    *tree_conflicted = FALSE;

  return b->callbacks2->file_deleted(adm_access, state, path,
                                     tmpfile1, tmpfile2, mimetype1, mimetype2,
                                     originalprops, b->baton);
}
