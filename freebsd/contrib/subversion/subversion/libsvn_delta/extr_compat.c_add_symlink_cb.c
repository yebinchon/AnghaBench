
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct editor_baton {int edit_pool; int changes; } ;
struct change_node {int props; int deleting; int kind; int action; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int RESTRUCTURE_ADD ;
 int SVN__NOT_IMPLEMENTED () ;
 struct change_node* insert_change (char const*,int ) ;
 int svn_node_symlink ;
 int svn_prop_hash_dup (int *,int ) ;

__attribute__((used)) static svn_error_t *
add_symlink_cb(void *baton,
               const char *relpath,
               const char *target,
               apr_hash_t *props,
               svn_revnum_t replaces_rev,
               apr_pool_t *scratch_pool)
{
  SVN__NOT_IMPLEMENTED();
}
