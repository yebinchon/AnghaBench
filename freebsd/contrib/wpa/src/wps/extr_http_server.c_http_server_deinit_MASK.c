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
struct http_server {scalar_t__ fd; int /*<<< orphan*/  requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct http_server*) ; 

void FUNC4(struct http_server *srv)
{
	if (srv == NULL)
		return;
	if (srv->fd >= 0) {
		FUNC1(srv->fd, EVENT_TYPE_READ);
		FUNC0(srv->fd);
	}
	FUNC2(srv->requests);

	FUNC3(srv);
}