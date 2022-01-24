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
struct httpread {int sd; struct httpread* uri; struct httpread* body; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct httpread*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  httpread_timeout_handler ; 
 int /*<<< orphan*/  FUNC2 (struct httpread*) ; 
 int /*<<< orphan*/  FUNC3 (struct httpread*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct httpread*) ; 

void FUNC5(struct httpread *h)
{
	FUNC4(MSG_DEBUG, "httpread_destroy(%p)", h);
	if (!h)
		return;

	FUNC0(httpread_timeout_handler, NULL, h);
	FUNC1(h->sd, EVENT_TYPE_READ);
	FUNC2(h->body);
	FUNC2(h->uri);
	FUNC3(h, 0, sizeof(*h));  /* aid debugging */
	h->sd = -1;     /* aid debugging */
	FUNC2(h);
}