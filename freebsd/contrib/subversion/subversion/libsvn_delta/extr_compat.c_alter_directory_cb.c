
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct editor_baton {int edit_pool; int changes; } ;
struct change_node {int props; int changing; int kind; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int * SVN_NO_ERROR ;
 struct change_node* insert_change (char const*,int ) ;
 int svn_node_dir ;
 int svn_prop_hash_dup (int *,int ) ;

__attribute__((used)) static svn_error_t *
alter_directory_cb(void *baton,
                   const char *relpath,
                   svn_revnum_t revision,
                   const apr_array_header_t *children,
                   apr_hash_t *props,
                   apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  struct change_node *change = insert_change(relpath, eb->changes);







  change->kind = svn_node_dir;
  change->changing = revision;
  change->props = svn_prop_hash_dup(props, eb->edit_pool);

  return SVN_NO_ERROR;
}
