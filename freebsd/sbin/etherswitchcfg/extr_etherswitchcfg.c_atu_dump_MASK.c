#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct cfg {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  p ;
struct TYPE_5__ {scalar_t__ es_nitems; int es_portmask; int /*<<< orphan*/  es_macaddr; scalar_t__ id; } ;
typedef  TYPE_1__ etherswitch_atu_table_t ;
typedef  TYPE_1__ etherswitch_atu_entry_t ;
typedef  int /*<<< orphan*/  e ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IOETHERSWITCHGETTABLE ; 
 int /*<<< orphan*/  IOETHERSWITCHGETTABLEENTRY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,char*,int) ; 

__attribute__((used)) static int
FUNC5(struct cfg *cfg, int argc, char *argv[])
{
	etherswitch_atu_table_t p;
	etherswitch_atu_entry_t e;
	uint32_t i;

	(void) argc;
	(void) argv;

	/* Note: argv[0] is "dump" */
	FUNC0(&p, sizeof(p));

	if (FUNC3(cfg->fd, IOETHERSWITCHGETTABLE, &p) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHGETTABLE)");

	/* And now, iterate to get entries */
	for (i = 0; i < p.es_nitems; i++) {
		FUNC0(&e, sizeof(e));
		e.id = i;
		if (FUNC3(cfg->fd, IOETHERSWITCHGETTABLEENTRY, &e) != 0)
			break;

		FUNC4(" [%d] %s: portmask 0x%08x\n", i,
		    FUNC2((void *) &e.es_macaddr),
		    e.es_portmask);
	}

	return (1);
}