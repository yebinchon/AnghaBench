#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  pasv_addr_ss ;
struct TYPE_12__ {int /*<<< orphan*/  pw_uid; } ;
struct TYPE_11__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_10__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* ctrl_addr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,TYPE_1__*,int*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pasv_addr ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 TYPE_5__* pw ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  restricted_data_ports ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

void
FUNC15(char *proto)
{
	socklen_t len;

	pdata = FUNC9(ctrl_addr->sa_family, SOCK_STREAM, 0);
	if (pdata < 0) {
		FUNC6(425, "Can't open passive connection");
		return;
	}
	pasv_addr->sa_family = ctrl_addr->sa_family;
	FUNC12 (pasv_addr,
				     FUNC10 (ctrl_addr),
				     0);
	FUNC13(pdata, restricted_data_ports,
	    pasv_addr->sa_family);
	if (FUNC8(0) < 0)
		FUNC2("Failed to seteuid");
	if (FUNC0(pdata, pasv_addr, FUNC14 (pasv_addr)) < 0) {
		if (FUNC8(pw->pw_uid))
			FUNC2("Failed to seteuid");
		goto pasv_error;
	}
	if (FUNC8(pw->pw_uid) < 0)
		FUNC2("Failed to seteuid");
	len = sizeof(pasv_addr_ss);
	if (FUNC3(pdata, pasv_addr, &len) < 0)
		goto pasv_error;
	if (FUNC4(pdata, 1) < 0)
		goto pasv_error;

	FUNC7(229, "Entering Extended Passive Mode (|||%d|)",
	      FUNC5(FUNC11 (pasv_addr)));
	return;

pasv_error:
	FUNC1(pdata);
	pdata = -1;
	FUNC6(425, "Can't open passive connection");
	return;
}