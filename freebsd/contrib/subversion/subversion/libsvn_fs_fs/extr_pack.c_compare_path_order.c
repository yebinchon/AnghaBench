
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ revision; int node_id; int path; } ;
typedef TYPE_1__ path_order_t ;


 int svn_fs_fs__id_part_compare (int *,int *) ;
 int svn_prefix_string__compare (int ,int ) ;

__attribute__((used)) static int
compare_path_order(const path_order_t * const * lhs_p,
                   const path_order_t * const * rhs_p)
{
  const path_order_t * lhs = *lhs_p;
  const path_order_t * rhs = *rhs_p;


  int diff = svn_prefix_string__compare(lhs->path, rhs->path);
  if (diff)
    return diff;


  diff = svn_fs_fs__id_part_compare(&rhs->node_id, &lhs->node_id);
  if (diff)
    return diff;


  if (lhs->revision != rhs->revision)
    return lhs->revision < rhs->revision ? 1 : -1;

  return 0;
}
