
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_fs__id_part_t ;
struct TYPE_3__ {int from; } ;
typedef TYPE_1__ reference_t ;


 int svn_fs_fs__id_part_compare (int *,int const*) ;

__attribute__((used)) static int
compare_ref_to_item(const reference_t * const * lhs_p,
                    const svn_fs_fs__id_part_t * rhs_p)
{
  return svn_fs_fs__id_part_compare(&(*lhs_p)->from, rhs_p);
}
