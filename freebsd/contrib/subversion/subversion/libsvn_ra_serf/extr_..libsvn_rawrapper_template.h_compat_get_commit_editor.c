
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback_t ;
typedef int svn_commit_callback2_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {int * (* get_commit_editor ) (void*,int const**,void**,int *,int ,void*,int *,int ,int *) ;} ;


 int APR_HASH_KEY_STRING ;
 int SVN_PROP_REVISION_LOG ;
 int TRUE ;
 TYPE_1__ VTBL ;
 int * apr_hash_make (int *) ;
 int apr_hash_set (int *,int ,int ,int ) ;
 int * stub1 (void*,int const**,void**,int *,int ,void*,int *,int ,int *) ;
 int svn_compat_wrap_commit_callback (int *,void**,int ,void*,int *) ;
 int svn_string_create (char const*,int *) ;

__attribute__((used)) static svn_error_t *compat_get_commit_editor(void *session_baton,
                                             const svn_delta_editor_t
                                             **editor,
                                             void **edit_baton,
                                             const char *log_msg,
                                             svn_commit_callback_t callback,
                                             void *callback_baton,
                                             apr_pool_t *pool)
{
  svn_commit_callback2_t callback2;
  void *callback2_baton;
  apr_hash_t *revprop_table = apr_hash_make(pool);

  svn_compat_wrap_commit_callback(&callback2, &callback2_baton,
                                  callback, callback_baton,
                                  pool);
  apr_hash_set(revprop_table, SVN_PROP_REVISION_LOG, APR_HASH_KEY_STRING,
               svn_string_create(log_msg, pool));
  return VTBL.get_commit_editor(session_baton, editor, edit_baton,
                                revprop_table, callback2, callback2_baton,
                                ((void*)0), TRUE, pool);
}
