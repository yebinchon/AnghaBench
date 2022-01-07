
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int proc_t ;
struct TYPE_3__ {int ftt_pc; } ;
typedef TYPE_1__ fasttrap_tracepoint_t ;
typedef int fasttrap_instr_t ;


 int FASTTRAP_INSTR ;
 scalar_t__ uwrite (int *,int *,int,int ) ;

int
fasttrap_tracepoint_install(proc_t *p, fasttrap_tracepoint_t *tp)
{
 fasttrap_instr_t instr = FASTTRAP_INSTR;

 if (uwrite(p, &instr, 1, tp->ftt_pc) != 0)
  return (-1);

 return (0);
}
