
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct node_baton_t {int has_props; } ;


 int * SVN_NO_ERROR ;
 int TRUE ;

__attribute__((used)) static svn_error_t *
remove_node_props(void *node_baton)
{
  struct node_baton_t *nb = node_baton;



  nb->has_props = TRUE;

  return SVN_NO_ERROR;
}
