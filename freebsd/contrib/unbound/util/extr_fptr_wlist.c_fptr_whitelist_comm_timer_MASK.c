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
 void FUNC0 (void*) ; 
 void FUNC1 (void*) ; 
 void FUNC2 (void*) ; 
 void FUNC3 (void*) ; 
 void FUNC4 (void*) ; 
 void FUNC5 (void*) ; 
 void FUNC6 (void*) ; 
 void FUNC7 (void*) ; 
 void FUNC8 (void*) ; 

int 
FUNC9(void (*fptr)(void*))
{
	if(fptr == &pending_udp_timer_cb) return 1;
	else if(fptr == &outnet_tcptimer) return 1;
	else if(fptr == &pending_udp_timer_delay_cb) return 1;
	else if(fptr == &worker_stat_timer_cb) return 1;
	else if(fptr == &worker_probe_timer_cb) return 1;
#ifdef UB_ON_WINDOWS
	else if(fptr == &wsvc_cron_cb) return 1;
#endif
	else if(fptr == &auth_xfer_timer) return 1;
	else if(fptr == &auth_xfer_probe_timer_callback) return 1;
	else if(fptr == &auth_xfer_transfer_timer_callback) return 1;
	return 0;
}