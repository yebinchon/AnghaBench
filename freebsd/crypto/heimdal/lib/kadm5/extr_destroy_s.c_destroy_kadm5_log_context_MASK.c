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
struct TYPE_3__ {int /*<<< orphan*/ * socket_info; int /*<<< orphan*/  socket_fd; int /*<<< orphan*/  log_file; } ;
typedef  TYPE_1__ kadm5_log_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (kadm5_log_context *c)
{
    FUNC0 (c->log_file);
    FUNC2 (c->socket_fd);
#ifdef NO_UNIX_SOCKETS
    if (c->socket_info) {
	freeaddrinfo(c->socket_info);
	c->socket_info = NULL;
    }
#endif
}