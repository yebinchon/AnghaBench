
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_array_run ;
 int preinit_array_run ;
 int preinit_array_state ;

__attribute__((used)) static void
preinit_array_handler(void)
{

 preinit_array_run = 1;
 preinit_array_state = init_array_run;
}
