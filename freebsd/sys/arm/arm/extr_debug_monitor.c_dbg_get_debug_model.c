
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int id_dfr0; } ;


 int ID_DFR0_CP_DEBUG_M_MASK ;
 int ID_DFR0_CP_DEBUG_M_SHIFT ;
 TYPE_1__ cpuinfo ;

__attribute__((used)) static __inline uint32_t
dbg_get_debug_model(void)
{
 uint32_t dbg_m;

 dbg_m = ((cpuinfo.id_dfr0 & ID_DFR0_CP_DEBUG_M_MASK) >>
     ID_DFR0_CP_DEBUG_M_SHIFT);

 return (dbg_m);
}
