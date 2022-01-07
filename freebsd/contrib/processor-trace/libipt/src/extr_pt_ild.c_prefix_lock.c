
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {TYPE_2__ u; } ;


 int prefix_next (struct pt_ild*,int ,int ) ;
 int pte_internal ;

__attribute__((used)) static int prefix_lock(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
 (void) rex;

 if (!ild)
  return -pte_internal;

 ild->u.s.lock = 1;

 return prefix_next(ild, length, 0);
}
