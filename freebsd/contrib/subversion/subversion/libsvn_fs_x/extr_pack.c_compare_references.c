
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int from; int to; } ;
typedef TYPE_1__ reference_t ;


 int svn_fs_x__id_compare (int *,int *) ;

__attribute__((used)) static int
compare_references(const reference_t * const * lhs_p,
                   const reference_t * const * rhs_p)
{
  const reference_t * lhs = *lhs_p;
  const reference_t * rhs = *rhs_p;

  int diff = svn_fs_x__id_compare(&lhs->to, &rhs->to);
  return diff ? diff : svn_fs_x__id_compare(&lhs->from, &rhs->from);
}
