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
struct permission {int port_to_connect; int /*<<< orphan*/ * host_to_connect; } ;

/* Variables and functions */
 char const* FWD_PERMIT_ANY_HOST ; 
 int FWD_PERMIT_ANY_PORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC1(struct permission *allowed_open, const char *requestedhost,
    int requestedport)
{
	if (allowed_open->host_to_connect == NULL)
		return 0;
	if (allowed_open->port_to_connect != FWD_PERMIT_ANY_PORT &&
	    allowed_open->port_to_connect != requestedport)
		return 0;
	if (FUNC0(allowed_open->host_to_connect, FWD_PERMIT_ANY_HOST) != 0 &&
	    FUNC0(allowed_open->host_to_connect, requestedhost) != 0)
		return 0;
	return 1;
}