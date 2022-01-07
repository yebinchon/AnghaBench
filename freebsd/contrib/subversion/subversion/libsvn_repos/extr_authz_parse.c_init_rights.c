
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_access; int min_access; } ;
typedef TYPE_1__ authz_rights_t ;


 int authz_access_none ;
 int authz_access_write ;

__attribute__((used)) static void init_rights(authz_rights_t *rights)
{
  rights->min_access = authz_access_write;
  rights->max_access = authz_access_none;
 }
