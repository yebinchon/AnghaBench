
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_access; int min_access; } ;
typedef TYPE_1__ authz_rights_t ;
typedef int authz_access_t ;



__attribute__((used)) static void
update_rights(authz_rights_t *rights,
              authz_access_t access)
{
  rights->min_access &= access;
  rights->max_access |= access;
}
