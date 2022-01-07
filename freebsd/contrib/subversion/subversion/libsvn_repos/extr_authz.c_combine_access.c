
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sequence_number; } ;
struct TYPE_6__ {TYPE_1__ access; } ;
typedef TYPE_2__ limited_rights_t ;



__attribute__((used)) static void
combine_access(limited_rights_t *target,
               const limited_rights_t *rights)
{


  if (target->access.sequence_number < rights->access.sequence_number)
    target->access = rights->access;
}
