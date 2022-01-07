
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comm_point_callback_type ;


 int libworker_handle_service_reply ;
 int worker_handle_service_reply ;

int
fptr_whitelist_serviced_query(comm_point_callback_type *fptr)
{
 if(fptr == &worker_handle_service_reply) return 1;
 else if(fptr == &libworker_handle_service_reply) return 1;
 return 0;
}
