
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_array_run ;
 int init_array_state ;
 int preinit_array_run ;

__attribute__((used)) static void
init_array_handler(void)
{

 init_array_run = 1;
 init_array_state = preinit_array_run;
}
