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
struct evhttp {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int FUNC0 (struct evhttp*,char const*,int /*<<< orphan*/ ) ; 
 struct evhttp* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp*) ; 

struct evhttp *
FUNC3(const char *address, ev_uint16_t port)
{
	struct evhttp *http = NULL;

	http = FUNC1();
	if (http == NULL)
		return (NULL);
	if (FUNC0(http, address, port) == -1) {
		FUNC2(http);
		return (NULL);
	}

	return (http);
}