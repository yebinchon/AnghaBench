
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int register_t ;
struct TYPE_2__ {int tf_pc; } ;



 int curthread ;
 TYPE_1__* kdb_frame ;
 int kdb_thread ;

void
gdb_cpu_setreg(int regnum, void *val)
{

 switch (regnum) {
 case 128:
  if (kdb_thread == curthread)
   kdb_frame->tf_pc = *(register_t *)val;
 }
}
