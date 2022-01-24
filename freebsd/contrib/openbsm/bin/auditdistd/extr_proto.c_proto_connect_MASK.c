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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PROTO_SIDE_CLIENT ; 
 int FUNC1 (char const*,char const*,int,int /*<<< orphan*/ ,struct proto_conn**) ; 

int
FUNC2(const char *srcaddr, const char *dstaddr, int timeout,
    struct proto_conn **connp)
{

	FUNC0(srcaddr == NULL || srcaddr[0] != '\0');
	FUNC0(dstaddr != NULL);
	FUNC0(timeout >= -1);

	return (FUNC1(srcaddr, dstaddr, timeout,
	    PROTO_SIDE_CLIENT, connp));
}