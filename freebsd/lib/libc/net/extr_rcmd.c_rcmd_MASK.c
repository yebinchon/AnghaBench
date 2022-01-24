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

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FUNC0 (char**,int,char const*,char const*,char const*,int*,int /*<<< orphan*/ ) ; 

int
FUNC1(char **ahost, int rport, const char *locuser, const char *remuser,
    const char *cmd, int *fd2p)
{
	return FUNC0(ahost, rport, locuser, remuser, cmd, fd2p, AF_INET);
}