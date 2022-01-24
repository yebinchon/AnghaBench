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
struct proto_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTO_SIDE_SERVER_LISTEN ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,struct proto_conn**) ; 

int
FUNC2(const char *addr, struct proto_conn **connp)
{

	FUNC0(addr != NULL);

	return (FUNC1(NULL, addr, -1, PROTO_SIDE_SERVER_LISTEN,
	    connp));
}