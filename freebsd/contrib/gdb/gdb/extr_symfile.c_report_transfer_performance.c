
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int gdb_stdout ;
 int print_transfer_performance (int ,unsigned long,scalar_t__,int ) ;

void
report_transfer_performance (unsigned long data_count, time_t start_time,
        time_t end_time)
{
  print_transfer_performance (gdb_stdout, data_count,
         end_time - start_time, 0);
}
