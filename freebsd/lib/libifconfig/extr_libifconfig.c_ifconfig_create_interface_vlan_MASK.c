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
struct vlanreq {unsigned short vlr_tag; int /*<<< orphan*/  vlr_parent; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; scalar_t__ ifr_data; } ;
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 unsigned short const NOTAG ; 
 int /*<<< orphan*/  SIOCIFCREATE2 ; 
 int /*<<< orphan*/  FUNC0 (struct vlanreq*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC4(ifconfig_handle_t *h, const char *name,
    char **ifname, const char *vlandev, const unsigned short vlantag)
{
	struct ifreq ifr;
	struct vlanreq params;

	if ((vlantag == NOTAG) || (vlandev[0] == '\0')) {
		// TODO: Add proper error tracking here
		return (-1);
	}

	FUNC0(&params, sizeof(params));
	(void)FUNC3(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	params.vlr_tag = vlantag;
	(void)FUNC3(params.vlr_parent, vlandev, sizeof(params.vlr_parent));
	ifr.ifr_data = (caddr_t)&params;

	if (FUNC1(h, AF_LOCAL, SIOCIFCREATE2, &ifr) < 0) {
		// TODO: Add proper error tracking here
		return (-1);
	}

	*ifname = FUNC2(ifr.ifr_name);
	return (0);
}