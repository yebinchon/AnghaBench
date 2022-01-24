#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cfg {int /*<<< orphan*/  fd; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  p ;
struct TYPE_7__ {int ifr_media; } ;
struct TYPE_6__ {int* ifm_ulist; int ifm_count; } ;
struct TYPE_8__ {TYPE_2__ es_ifr; TYPE_1__ es_ifmr; int /*<<< orphan*/  es_port; } ;
typedef  TYPE_3__ etherswitch_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int IFMEDIAREQ_NULISTENTRIES ; 
 int IFM_FDX ; 
 int IFM_HDX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IOETHERSWITCHGETPORT ; 
 int /*<<< orphan*/  IOETHERSWITCHSETPORT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC6(struct cfg *cfg, int argc, char *argv[])
{
	etherswitch_port_t p;
	int ifm_ulist[IFMEDIAREQ_NULISTENTRIES];
	int options;

	if (argc < 2)
		return (-1);

	FUNC1(&p, sizeof(p));
	p.es_port = cfg->unit;
	p.es_ifmr.ifm_ulist = ifm_ulist;
	p.es_ifmr.ifm_count = IFMEDIAREQ_NULISTENTRIES;
	if (FUNC5(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
		FUNC2(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");
	options = FUNC4(FUNC0(ifm_ulist[0]), argv[1]);
	if (options == -1)
		FUNC3(EX_USAGE, "invalid media options \"%s\"", argv[1]);
	if (options & IFM_HDX) {
		p.es_ifr.ifr_media &= ~IFM_FDX;
		options &= ~IFM_HDX;
	}
	p.es_ifr.ifr_media |= options;
	if (FUNC5(cfg->fd, IOETHERSWITCHSETPORT, &p) != 0)
		FUNC2(EX_OSERR, "ioctl(IOETHERSWITCHSETPORT)");
	return (0);
}