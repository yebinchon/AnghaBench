
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton_t {int pool; int depth; int anchor_abspath; int root_opened; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int walk_local_nodes_diff (struct edit_baton_t*,int ,char*,int ,int *,int *,int ) ;

__attribute__((used)) static svn_error_t *
close_edit(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton_t *eb = edit_baton;

  if (!eb->root_opened)
    {
      SVN_ERR(walk_local_nodes_diff(eb,
                                    eb->anchor_abspath,
                                    "",
                                    eb->depth,
                                    ((void*)0) ,
                                    ((void*)0) ,
                                    eb->pool));
    }

  return SVN_NO_ERROR;
}
