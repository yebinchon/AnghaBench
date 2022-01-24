#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct pkt {TYPE_2__ sa4; int /*<<< orphan*/  refid; } ;
struct kod_entry {int /*<<< orphan*/  type; } ;
typedef  struct pkt sockaddr_u ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int KOD_DEMOBILIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct pkt) ; 
 int /*<<< orphan*/  FUNC3 (int,struct pkt*,struct pkt*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct kod_entry**) ; 

void
FUNC8(void)
{
	static const char *	HOSTNAME = "192.0.2.1";
	static const char *	REASON = "DENY";
	struct pkt		rpkt;
	sockaddr_u		host;
	int			rpktl;
	struct kod_entry *	entry;

	rpktl = KOD_DEMOBILIZE;
	FUNC2(rpkt);
	FUNC6(&rpkt.refid, REASON, 4);
	FUNC2(host);
	host.sa4.sin_family = AF_INET;
	host.sa4.sin_addr.s_addr = FUNC4(HOSTNAME);

	/* Test that the KOD-entry is added to the database. */
	FUNC5("/dev/null", TRUE);

	FUNC0(1, FUNC3(rpktl, &rpkt, &host, HOSTNAME));

	FUNC0(1, FUNC7(HOSTNAME, &entry));
	FUNC1(REASON, entry->type, 4);
}