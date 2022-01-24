#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; int fd; int /*<<< orphan*/  request; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ SocketEntry ;

/* Variables and functions */
 scalar_t__ AUTH_CONNECTION ; 
 scalar_t__ AUTH_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ xcount ; 

__attribute__((used)) static void
FUNC4(SocketEntry *e)
{
	int last = 0;

	if (e->type == AUTH_CONNECTION) {
		FUNC2("xcount %d -> %d", xcount, xcount - 1);
		if (--xcount == 0)
			last = 1;
	}
	FUNC1(e->fd);
	e->fd = -1;
	e->type = AUTH_UNUSED;
	FUNC3(e->input);
	FUNC3(e->output);
	FUNC3(e->request);
	if (last)
		FUNC0(0);
}