
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void comm_base_handle_slow_accept (int,short,void*) ;
 void comm_point_http_handle_callback (int,short,void*) ;
 void comm_point_local_handle_callback (int,short,void*) ;
 void comm_point_raw_handle_callback (int,short,void*) ;
 void comm_point_tcp_accept_callback (int,short,void*) ;
 void comm_point_tcp_handle_callback (int,short,void*) ;
 void comm_point_udp_ancil_callback (int,short,void*) ;
 void comm_point_udp_callback (int,short,void*) ;
 void comm_signal_callback (int,short,void*) ;
 void comm_timer_callback (int,short,void*) ;
 void tube_handle_signal (int,short,void*) ;
 void worker_win_stop_cb (int,short,void*) ;

int
fptr_whitelist_event(void (*fptr)(int, short, void *))
{
 if(fptr == &comm_point_udp_callback) return 1;
 else if(fptr == &comm_point_udp_ancil_callback) return 1;
 else if(fptr == &comm_point_tcp_accept_callback) return 1;
 else if(fptr == &comm_point_tcp_handle_callback) return 1;
 else if(fptr == &comm_timer_callback) return 1;
 else if(fptr == &comm_signal_callback) return 1;
 else if(fptr == &comm_point_local_handle_callback) return 1;
 else if(fptr == &comm_point_raw_handle_callback) return 1;
 else if(fptr == &tube_handle_signal) return 1;
 else if(fptr == &comm_base_handle_slow_accept) return 1;
 else if(fptr == &comm_point_http_handle_callback) return 1;



 return 0;
}
