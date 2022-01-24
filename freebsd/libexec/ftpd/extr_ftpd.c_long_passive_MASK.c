#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  on ;
struct TYPE_11__ {int /*<<< orphan*/ * s6_addr; } ;
struct TYPE_8__ {TYPE_6__ sin6_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_10__ {int su_family; scalar_t__ su_port; TYPE_2__ su_sin6; TYPE_1__ su_sin; int /*<<< orphan*/  su_len; } ;
struct TYPE_9__ {int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_PORTRANGE ; 
 int IPV6_PORTRANGE_DEFAULT ; 
 int IPV6_PORTRANGE_HIGH ; 
 int /*<<< orphan*/  IP_PORTRANGE ; 
 int IP_PORTRANGE_DEFAULT ; 
 int IP_PORTRANGE_HIGH ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__ ctrl_addr ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 (scalar_t__) ; 
 TYPE_4__ pasv_addr ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 TYPE_3__* pw ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ restricted_data_ports ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

void
FUNC14(char *cmd, int pf)
{
	socklen_t len;
	int on;
	char *p, *a;

	if (pdata >= 0)		/* close old port if one set */
		FUNC3(pdata);

	if (pf != PF_UNSPEC) {
		if (ctrl_addr.su_family != pf) {
			switch (ctrl_addr.su_family) {
			case AF_INET:
				pf = 1;
				break;
			case AF_INET6:
				pf = 2;
				break;
			default:
				pf = 0;
				break;
			}
			/*
			 * XXX
			 * only EPRT/EPSV ready clients will understand this
			 */
			if (FUNC12(cmd, "EPSV") == 0 && pf) {
				FUNC8(522, "Network protocol mismatch, "
					"use (%d)", pf);
			} else
				FUNC8(501, "Network protocol mismatch."); /*XXX*/

			return;
		}
	}
		
	pdata = FUNC11(ctrl_addr.su_family, SOCK_STREAM, 0);
	if (pdata < 0) {
		FUNC7(425, "Can't open passive connection");
		return;
	}
	on = 1;
	if (FUNC10(pdata, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
		FUNC13(LOG_WARNING, "pdata setsockopt (SO_REUSEADDR): %m");

	(void) FUNC9(0);

	pasv_addr = ctrl_addr;
	pasv_addr.su_port = 0;
	len = pasv_addr.su_len;

#ifdef IP_PORTRANGE
	if (ctrl_addr.su_family == AF_INET) {
	    on = restricted_data_ports ? IP_PORTRANGE_HIGH
				       : IP_PORTRANGE_DEFAULT;

	    if (setsockopt(pdata, IPPROTO_IP, IP_PORTRANGE,
			    &on, sizeof(on)) < 0)
		    goto pasv_error;
	}
#endif
#ifdef IPV6_PORTRANGE
	if (ctrl_addr.su_family == AF_INET6) {
	    on = restricted_data_ports ? IPV6_PORTRANGE_HIGH
				       : IPV6_PORTRANGE_DEFAULT;

	    if (setsockopt(pdata, IPPROTO_IPV6, IPV6_PORTRANGE,
			    &on, sizeof(on)) < 0)
		    goto pasv_error;
	}
#endif

	if (FUNC2(pdata, (struct sockaddr *)&pasv_addr, len) < 0)
		goto pasv_error;

	(void) FUNC9(pw->pw_uid);

	if (FUNC4(pdata, (struct sockaddr *) &pasv_addr, &len) < 0)
		goto pasv_error;
	if (FUNC5(pdata, 1) < 0)
		goto pasv_error;

#define UC(b) (((int) b) & 0xff)

	if (FUNC12(cmd, "LPSV") == 0) {
		p = (char *)&pasv_addr.su_port;
		switch (pasv_addr.su_family) {
		case AF_INET:
			a = (char *) &pasv_addr.su_sin.sin_addr;
		v4_reply:
			FUNC8(228,
"Entering Long Passive Mode (%d,%d,%d,%d,%d,%d,%d,%d,%d)",
			      4, 4, UC(a[0]), UC(a[1]), UC(a[2]), UC(a[3]),
			      2, UC(p[0]), UC(p[1]));
			return;
		case AF_INET6:
			if (FUNC0(&pasv_addr.su_sin6.sin6_addr)) {
				a = (char *) &pasv_addr.su_sin6.sin6_addr.s6_addr[12];
				goto v4_reply;
			}
			a = (char *) &pasv_addr.su_sin6.sin6_addr;
			FUNC8(228,
"Entering Long Passive Mode "
"(%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d)",
			      6, 16, UC(a[0]), UC(a[1]), UC(a[2]), UC(a[3]),
			      UC(a[4]), UC(a[5]), UC(a[6]), UC(a[7]),
			      UC(a[8]), UC(a[9]), UC(a[10]), UC(a[11]),
			      UC(a[12]), UC(a[13]), UC(a[14]), UC(a[15]),
			      2, UC(p[0]), UC(p[1]));
			return;
		}
	} else if (FUNC12(cmd, "EPSV") == 0) {
		switch (pasv_addr.su_family) {
		case AF_INET:
		case AF_INET6:
			FUNC8(229, "Entering Extended Passive Mode (|||%d|)",
				FUNC6(pasv_addr.su_port));
			return;
		}
	} else {
		/* more proper error code? */
	}

pasv_error:
	(void) FUNC9(pw->pw_uid);
	(void) FUNC3(pdata);
	pdata = -1;
	FUNC7(425, "Can't open passive connection");
	return;
}