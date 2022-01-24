#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 void FUNC0 (int,short,void*) ; 
 void FUNC1 (int,short,void*) ; 
 void FUNC2 (int,short,void*) ; 
 void FUNC3 (int,short,void*) ; 
 void FUNC4 (int,short,void*) ; 
 void FUNC5 (int,short,void*) ; 
 void FUNC6 (int,short,void*) ; 
 void FUNC7 (int,short,void*) ; 
 void FUNC8 (int,short,void*) ; 
 void FUNC9 (int,short,void*) ; 
 void FUNC10 (int,short,void*) ; 
 void FUNC11 (int,short,void*) ; 

int 
FUNC12(void (*fptr)(int, short, void *))
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
#ifdef UB_ON_WINDOWS
	else if(fptr == &worker_win_stop_cb) return 1;
#endif
	return 0;
}