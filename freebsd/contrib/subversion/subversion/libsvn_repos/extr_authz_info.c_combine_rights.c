
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int min_access; int max_access; } ;
typedef TYPE_1__ authz_rights_t ;



__attribute__((used)) static void
combine_rights(authz_rights_t *rights_p,
               const authz_rights_t *lhs,
               const authz_rights_t *rhs)
{
  rights_p->min_access = lhs->min_access & rhs->min_access;
  rights_p->max_access = lhs->max_access | rhs->max_access;
}
