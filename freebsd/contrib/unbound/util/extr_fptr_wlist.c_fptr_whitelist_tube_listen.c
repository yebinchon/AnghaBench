
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tube_callback_type ;


 int libworker_handle_control_cmd ;
 int worker_handle_control_cmd ;

int fptr_whitelist_tube_listen(tube_callback_type* fptr)
{
 if(fptr == &worker_handle_control_cmd) return 1;
 else if(fptr == &libworker_handle_control_cmd) return 1;
 return 0;
}
