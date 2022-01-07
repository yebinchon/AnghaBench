
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comm_point_callback_type ;


 int remote_accept_callback ;
 int remote_control_callback ;
 int tube_handle_listen ;
 int tube_handle_write ;

int
fptr_whitelist_comm_point_raw(comm_point_callback_type *fptr)
{
 if(fptr == &tube_handle_listen) return 1;
 else if(fptr == &tube_handle_write) return 1;
 else if(fptr == &remote_accept_callback) return 1;
 else if(fptr == &remote_control_callback) return 1;
 return 0;
}
