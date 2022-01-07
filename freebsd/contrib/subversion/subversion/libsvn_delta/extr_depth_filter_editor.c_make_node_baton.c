
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
struct node_baton {int dir_depth; int filtered; int * wrapped_baton; void* edit_baton; } ;
typedef int apr_pool_t ;


 struct node_baton* apr_palloc (int *,int) ;

__attribute__((used)) static struct node_baton *
make_node_baton(void *edit_baton,
                svn_boolean_t filtered,
                int dir_depth,
                apr_pool_t *pool)
{
  struct node_baton *b = apr_palloc(pool, sizeof(*b));
  b->edit_baton = edit_baton;
  b->wrapped_baton = ((void*)0);
  b->filtered = filtered;
  b->dir_depth = dir_depth;
  return b;
}
