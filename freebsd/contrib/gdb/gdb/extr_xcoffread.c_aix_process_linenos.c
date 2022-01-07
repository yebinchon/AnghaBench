
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_src_end_addr ;
 int last_source_start_addr ;
 int process_linenos (int ,int ) ;

void
aix_process_linenos (void)
{

  process_linenos (last_source_start_addr, cur_src_end_addr);
}
