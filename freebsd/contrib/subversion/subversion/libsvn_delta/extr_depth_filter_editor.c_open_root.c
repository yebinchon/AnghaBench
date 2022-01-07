
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct node_baton {int wrapped_baton; } ;
struct edit_baton {int wrapped_edit_baton; TYPE_1__* wrapped_editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* open_root ) (int ,int ,int *,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct node_baton* make_node_baton (void*,int ,int,int *) ;
 int stub1 (int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct node_baton *b;


  b = make_node_baton(edit_baton, FALSE, 1, pool);
  SVN_ERR(eb->wrapped_editor->open_root(eb->wrapped_edit_baton, base_revision,
                                        pool, &b->wrapped_baton));

  *root_baton = b;
  return SVN_NO_ERROR;
}
