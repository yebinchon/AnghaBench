
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int * baton; } ;
struct editor_baton {int dedit_baton; int deditor; int base_relpath; int changes; TYPE_1__ root; } ;
struct change_node {int kind; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apply_change ;
 int * get_sorted_paths (int ,int ,int *) ;
 struct change_node* insert_change (int ,int ) ;
 int svn_delta_path_driver2 (int ,int ,int const*,int ,int ,void*,int *) ;
 int svn_node_dir ;

__attribute__((used)) static svn_error_t *
drive_changes(const struct editor_baton *eb,
              apr_pool_t *scratch_pool)
{
  struct change_node *change;
  const apr_array_header_t *paths;



  if (eb->root.baton == ((void*)0))
    return SVN_NO_ERROR;





  change = insert_change(eb->base_relpath, eb->changes);
  change->kind = svn_node_dir;



  paths = get_sorted_paths(eb->changes, eb->base_relpath, scratch_pool);
  SVN_ERR(svn_delta_path_driver2(eb->deditor, eb->dedit_baton, paths,
                                 FALSE, apply_change, (void *)eb,
                                 scratch_pool));

  return SVN_NO_ERROR;
}
