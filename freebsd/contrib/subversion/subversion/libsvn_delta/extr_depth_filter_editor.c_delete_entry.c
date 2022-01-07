
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct node_baton {int wrapped_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* delete_entry ) (char const*,int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ okay_to_edit (struct edit_baton*,struct node_baton*,int ) ;
 int stub1 (char const*,int ,int ,int *) ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t base_revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct node_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  if (okay_to_edit(eb, pb, svn_node_file))
    SVN_ERR(eb->wrapped_editor->delete_entry(path, base_revision,
                                             pb->wrapped_baton, pool));

  return SVN_NO_ERROR;
}
