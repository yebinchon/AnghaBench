
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct editor_baton {int changes; } ;
struct change_node {int deleting; int kind; int action; } ;
typedef int apr_pool_t ;


 int RESTRUCTURE_ADD_ABSENT ;
 int * SVN_NO_ERROR ;
 struct change_node* insert_change (char const*,int ) ;

__attribute__((used)) static svn_error_t *
add_absent_cb(void *baton,
              const char *relpath,
              svn_node_kind_t kind,
              svn_revnum_t replaces_rev,
              apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  struct change_node *change = insert_change(relpath, eb->changes);

  change->action = RESTRUCTURE_ADD_ABSENT;
  change->kind = kind;
  change->deleting = replaces_rev;

  return SVN_NO_ERROR;
}
