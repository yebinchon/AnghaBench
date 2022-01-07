
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ osz; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {TYPE_2__ u; } ;
typedef enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;


 scalar_t__ mode_32b (struct pt_ild const*) ;
 int ptem_16bit ;
 int ptem_32bit ;

__attribute__((used)) static inline enum pt_exec_mode
pti_get_nominal_eosz_non64(const struct pt_ild *ild)
{
 if (mode_32b(ild)) {
  if (ild->u.s.osz)
   return ptem_16bit;
  return ptem_32bit;
 }
 if (ild->u.s.osz)
  return ptem_32bit;
 return ptem_16bit;
}
