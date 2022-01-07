
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct node_baton {TYPE_1__* node; int * parent_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {int node_pool; TYPE_1__* node; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {char action; int kind; } ;


 int * SVN_NO_ERROR ;
 struct node_baton* apr_pcalloc (int *,int) ;
 TYPE_1__* create_node (char*,int *,int ) ;
 int svn_node_dir ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct node_baton *d = apr_pcalloc(pool, sizeof(*d));

  d->edit_baton = eb;
  d->parent_baton = ((void*)0);
  d->node = (eb->node = create_node("", ((void*)0), eb->node_pool));
  d->node->kind = svn_node_dir;
  d->node->action = 'R';
  *root_baton = d;

  return SVN_NO_ERROR;
}
