
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int proc_t ;
struct TYPE_3__ {int ftt_pc; int ftt_instr; } ;
typedef TYPE_1__ fasttrap_tracepoint_t ;


 scalar_t__ FASTTRAP_INSTR ;
 scalar_t__ uread (int *,scalar_t__*,int,int ) ;
 scalar_t__ uwrite (int *,int *,int,int ) ;

int
fasttrap_tracepoint_remove(proc_t *p, fasttrap_tracepoint_t *tp)
{
 uint32_t instr;





 if (uread(p, &instr, 4, tp->ftt_pc) != 0)
  return (0);
 if (instr != FASTTRAP_INSTR)
  return (0);
 if (uwrite(p, &tp->ftt_instr, 4, tp->ftt_pc) != 0)
  return (-1);

 return (0);
}
