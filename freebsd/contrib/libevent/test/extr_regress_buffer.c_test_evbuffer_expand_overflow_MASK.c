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
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVBUFFER_CHAIN_MAX ; 
 int /*<<< orphan*/  EV_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 struct evbuffer* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*) ; 

__attribute__((used)) static void
FUNC5(void *ptr)
{
	struct evbuffer *buf;

	buf = FUNC3();
	FUNC0(buf, "1", 1);
	FUNC1(buf, EVBUFFER_CHAIN_MAX);
	FUNC4(buf);

	FUNC1(buf, EV_SIZE_MAX);
	FUNC4(buf);

end:
	FUNC2(buf);
}