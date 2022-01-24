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
struct netconfig {int dummy; } ;
struct netbuf {int dummy; } ;
struct __rpc_sockinfo {int /*<<< orphan*/  si_af; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netconfig const*,struct __rpc_sockinfo*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,struct netbuf const*) ; 

char *
FUNC2(const struct netconfig *nconf, const struct netbuf *nbuf)
{
	struct __rpc_sockinfo si;

	if (!FUNC0(nconf, &si))
		return NULL;
	return FUNC1(si.si_af, nbuf);
}