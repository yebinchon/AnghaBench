
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comm_point_callback_type ;


 int auth_xfer_probe_udp_callback ;
 int auth_xfer_transfer_http_callback ;
 int auth_xfer_transfer_tcp_callback ;
 int outnet_tcp_cb ;
 int outnet_udp_cb ;
 int tube_handle_listen ;
 int worker_handle_request ;

int
fptr_whitelist_comm_point(comm_point_callback_type *fptr)
{
 if(fptr == &worker_handle_request) return 1;
 else if(fptr == &outnet_udp_cb) return 1;
 else if(fptr == &outnet_tcp_cb) return 1;
 else if(fptr == &tube_handle_listen) return 1;
 else if(fptr == &auth_xfer_probe_udp_callback) return 1;
 else if(fptr == &auth_xfer_transfer_tcp_callback) return 1;
 else if(fptr == &auth_xfer_transfer_http_callback) return 1;
 return 0;
}
