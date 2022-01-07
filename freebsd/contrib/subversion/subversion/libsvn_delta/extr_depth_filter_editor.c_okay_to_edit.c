
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
typedef int svn_boolean_t ;
struct node_baton {int dir_depth; scalar_t__ filtered; } ;
struct edit_baton {int requested_depth; scalar_t__ has_target; } ;


 int FALSE ;
 int SVN_ERR_MALFUNCTION_NO_RETURN () ;






 int svn_node_file ;

__attribute__((used)) static svn_boolean_t
okay_to_edit(struct edit_baton *eb,
             struct node_baton *pb,
             svn_node_kind_t kind)
{
  int effective_depth;



  if (pb->filtered)
    return FALSE;
  effective_depth = pb->dir_depth - (eb->has_target ? 1 : 0);
  switch (eb->requested_depth)
    {
    case 133:
      return (effective_depth <= 0);
    case 131:
      return ((effective_depth <= 0)
              || (kind == svn_node_file && effective_depth == 1));
    case 130:
      return (effective_depth <= 1);
    case 128:
    case 132:
    case 129:

    default:
      SVN_ERR_MALFUNCTION_NO_RETURN();
    }
}
