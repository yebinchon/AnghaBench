
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min_rights; int max_rights; } ;
typedef TYPE_1__ limited_rights_t ;



__attribute__((used)) static void
combine_right_limits(limited_rights_t *target,
                     const limited_rights_t *rights)
{
  target->max_rights |= rights->max_rights;
  target->min_rights &= rights->min_rights;
}
