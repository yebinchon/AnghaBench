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
struct __rpc_sockinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct __rpc_sockinfo*,char const**) ; 
 struct netconfig* FUNC2 (char*) ; 

struct netconfig *
FUNC3(int fd)
{
	const char *netid;
	struct __rpc_sockinfo si;

	if (!FUNC0(fd, &si))
		return NULL;

	if (!FUNC1(&si, &netid))
		return NULL;

	/*LINTED const castaway*/
	return FUNC2((char *)netid);
}