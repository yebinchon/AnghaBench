
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_2__ {scalar_t__ revision; } ;
typedef TYPE_1__ rep_ref_t ;



__attribute__((used)) static int
compare_representation_refs(const void *lhs, const void *rhs)
{
  svn_revnum_t lhs_rev = (*(const rep_ref_t *const *)lhs)->revision;
  svn_revnum_t rhs_rev = (*(const rep_ref_t *const *)rhs)->revision;

  if (lhs_rev < rhs_rev)
    return -1;
  return (lhs_rev > rhs_rev ? 1 : 0);
}
