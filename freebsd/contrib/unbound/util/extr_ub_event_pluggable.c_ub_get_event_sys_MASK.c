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
struct ub_event_base {int dummy; } ;
struct event_base {int dummy; } ;
struct ev_loop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct ev_loop*) ; 
 char* FUNC2 (struct event_base*) ; 
 char* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct event_base* FUNC5 (struct ub_event_base*) ; 

void
FUNC6(struct ub_event_base* ub_base, const char** n, const char** s,
	const char** m)
{
#ifdef USE_WINSOCK
	(void)ub_base;
	*n = "pluggable-event";
	*s = "winsock";
	*m = "WSAWaitForMultipleEvents";
#elif defined(USE_MINI_EVENT)
	(void)ub_base;
	*n = "pluggable-event";
	*s = "internal";
	*m = "select";
#else
	struct event_base* b = FUNC5(ub_base);
	/* This function is only called from comm_base_create, so
	 * ub_base is guaranteed to exist and to be the default
	 * event base.
	 */
	FUNC0(b);
	*n = "pluggable-event";
	*s = FUNC3();
#  if defined(HAVE_EV_LOOP) || defined(HAVE_EV_DEFAULT_LOOP)
	*n = "pluggable-libev";
#    ifdef EVBACKEND_SELECT
	*m = ub_ev_backend2str_pluggable(ev_backend((struct ev_loop*)b));
#    else
	*m = "not obtainable";
#    endif
#  elif defined(HAVE_EVENT_BASE_GET_METHOD)
	*n = "pluggable-libevent";
	*m = event_base_get_method(b);
#  else
	*m = "not obtainable";
#  endif
#endif
}