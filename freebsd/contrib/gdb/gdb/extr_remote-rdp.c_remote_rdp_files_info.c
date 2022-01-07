
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_2__ {int target_info; int break_info; int step_info; } ;


 int breakinfo ;
 TYPE_1__ ds ;
 int dump_bits (int ,int ) ;
 int printf_filtered (char*) ;
 int printf_unfiltered (char*,int) ;
 int stepinfo ;

__attribute__((used)) static void
remote_rdp_files_info (struct target_ops *target)
{
  printf_filtered ("Target capabilities:\n");
  dump_bits (stepinfo, ds.step_info);
  dump_bits (breakinfo, ds.break_info);
  printf_unfiltered ("target level RDI %x\n", (ds.target_info >> 5) & 3);
}
