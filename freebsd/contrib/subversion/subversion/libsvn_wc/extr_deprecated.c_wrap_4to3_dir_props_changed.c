
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
typedef int apr_array_header_t ;
struct TYPE_2__ {int * (* dir_props_changed ) (int *,int *,int *,int ,int const*,int *,int ) ;} ;


 int * stub1 (int *,int *,int *,int ,int const*,int *,int ) ;
 int svn_dirent_join (int ,char const*,int *) ;
 int * svn_wc__adm_retrieve_internal2 (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
wrap_4to3_dir_props_changed(svn_wc_notify_state_t *propstate,
                            svn_boolean_t *tree_conflicted,
                            const char *path,
                            svn_boolean_t dir_was_added,
                            const apr_array_header_t *propchanges,
                            apr_hash_t *original_props,
                            void *diff_baton,
                            apr_pool_t *scratch_pool)
{
  struct diff_callbacks3_wrapper_baton *b = diff_baton;
  svn_wc_adm_access_t *adm_access;

  adm_access = svn_wc__adm_retrieve_internal2(
                        b->db,
                        svn_dirent_join(b->anchor_abspath, path, scratch_pool),
                        scratch_pool);

  return b->callbacks3->dir_props_changed(adm_access, propstate,
                                          tree_conflicted,
                                          svn_dirent_join(b->anchor, path,
                                                     scratch_pool),
                                          propchanges, original_props,
                                          b->baton);
}
