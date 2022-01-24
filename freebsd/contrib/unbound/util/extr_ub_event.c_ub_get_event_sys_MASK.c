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
 struct event_base* FUNC0 (struct ub_event_base*) ; 
 int /*<<< orphan*/  EVFLAG_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct ev_loop*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*) ; 
 char* FUNC4 (struct event_base*) ; 
 struct event_base* FUNC5 () ; 
 char* FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct ub_event_base* base, const char** n, const char** s,
	const char** m)
{
#ifdef USE_WINSOCK
	(void)base;
	*n = "event";
	*s = "winsock";
	*m = "WSAWaitForMultipleEvents";
#elif defined(USE_MINI_EVENT)
	(void)base;
	*n = "mini-event";
	*s = "internal";
	*m = "select";
#else
	struct event_base* b = FUNC0(base);
	*s = FUNC6();
#  if defined(HAVE_EV_LOOP) || defined(HAVE_EV_DEFAULT_LOOP)
	*n = "libev";
	if (!b)
		b = (struct event_base*)ev_default_loop(EVFLAG_AUTO);
#    ifdef EVBACKEND_SELECT
	*m = ub_ev_backend2str(ev_backend((struct ev_loop*)b));
#    else
	*m = "not obtainable";
#    endif
#  elif defined(HAVE_EVENT_BASE_GET_METHOD)
	*n = "libevent";
	if (!b)
		b = event_base_new();
	*m = event_base_get_method(b);
#  else
	*n = "unknown";
	*m = "not obtainable";
	(void)b;
#  endif
#  ifdef HAVE_EVENT_BASE_FREE
	if (b && b != AS_EVENT_BASE(base))
		event_base_free(b);
#  endif
#endif
}