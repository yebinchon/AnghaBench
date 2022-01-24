#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  origin ;
struct TYPE_6__ {int /*<<< orphan*/  s; } ;
struct TYPE_5__ {TYPE_2__ value; int /*<<< orphan*/  attr; } ;
struct TYPE_7__ {TYPE_1__ source; int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_SOURCE_NTPQ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__ cfgt ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(
	sockaddr_u *	remote_addr
	)
{
	char origin[128];

	FUNC6(origin, sizeof(origin), "remote config from %s",
		 FUNC7(remote_addr));
	FUNC4(origin, NULL); /* no checking needed... */
	FUNC2(&cfgt);
	FUNC9();
	FUNC3();

	cfgt.source.attr = CONF_SOURCE_NTPQ;
	cfgt.timestamp = FUNC8(NULL);
	cfgt.source.value.s = FUNC1(FUNC7(remote_addr));

	FUNC0(1, ("Finished Parsing!!\n"));

	FUNC5(FALSE);
}