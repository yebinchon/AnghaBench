
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_prefix_string__t ;
struct TYPE_3__ {void* is_head; int * path; } ;
typedef TYPE_1__ path_order_t ;


 void* TRUE ;
 scalar_t__ svn_prefix_string__compare (int const*,int *) ;

__attribute__((used)) static void
classify_nodes(path_order_t **path_order,
               int count)
{
  const svn_prefix_string__t *path;
  int i;


  if (count == 0)
    return;




  path = path_order[0]->path;
  path_order[0]->is_head = TRUE;





  for (i = 1; i < count; ++i)
    {

      if (svn_prefix_string__compare(path, path_order[i]->path))
        {
          path = path_order[i]->path;
          path_order[i]->is_head = TRUE;
        }
    }
}
