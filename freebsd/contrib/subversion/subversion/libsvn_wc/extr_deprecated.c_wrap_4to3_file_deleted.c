
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct diff_callbacks3_wrapper_baton {int baton; int anchor; TYPE_1__* callbacks3; int anchor_abspath; int db; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {int * (* file_deleted ) (int *,int *,int *,int ,char const*,char const*,char const*,char const*,int *,int ) ;} ;


 int * stub1 (int *,int *,int *,int ,char const*,char const*,char const*,char const*,int *,int ) ;
 int svn_dirent_join (int ,char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 int * svn_wc__adm_retrieve_internal2 (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
wrap_4to3_file_deleted(svn_wc_notify_state_t *state,
                       svn_boolean_t *tree_conflicted,
                       const char *path,
                       const char *tmpfile1,
                       const char *tmpfile2,
                       const char *mimetype1,
                       const char *mimetype2,
                       apr_hash_t *originalprops,
                       void *diff_baton,
                       apr_pool_t *scratch_pool)
{
  struct diff_callbacks3_wrapper_baton *b = diff_baton;
  svn_wc_adm_access_t *adm_access;
  const char *dir = svn_relpath_dirname(path, scratch_pool);

  adm_access = svn_wc__adm_retrieve_internal2(
                        b->db,
                        svn_dirent_join(b->anchor_abspath, dir, scratch_pool),
                        scratch_pool);

  return b->callbacks3->file_deleted(adm_access, state, tree_conflicted,
                                     svn_dirent_join(b->anchor, path,
                                                     scratch_pool),
                                     tmpfile1, tmpfile2,
                                     mimetype1, mimetype2, originalprops,
                                     b->baton);
}
