
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct node_baton {TYPE_1__* node; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int prop_mod; } ;


 int * SVN_NO_ERROR ;
 int TRUE ;

__attribute__((used)) static svn_error_t *
change_node_prop(void *node_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct node_baton *nb = node_baton;
  nb->node->prop_mod = TRUE;
  return SVN_NO_ERROR;
}
