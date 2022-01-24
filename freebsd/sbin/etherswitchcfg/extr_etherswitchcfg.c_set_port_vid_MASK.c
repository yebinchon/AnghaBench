#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cfg {int /*<<< orphan*/  fd; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  p ;
struct TYPE_4__ {int es_pvid; int /*<<< orphan*/  es_port; } ;
typedef  TYPE_1__ etherswitch_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int IEEE802DOT1Q_VID_MAX ; 
 int /*<<< orphan*/  IOETHERSWITCHGETPORT ; 
 int /*<<< orphan*/  IOETHERSWITCHSETPORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cfg *cfg, int argc, char *argv[])
{
	int v;
	etherswitch_port_t p;

	if (argc < 2)
		return (-1);

	v = FUNC4(argv[1], NULL, 0);
	if (v < 0 || v > IEEE802DOT1Q_VID_MAX)
		FUNC2(EX_USAGE, "pvid must be between 0 and %d",
		    IEEE802DOT1Q_VID_MAX);
	FUNC0(&p, sizeof(p));
	p.es_port = cfg->unit;
	if (FUNC3(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");
	p.es_pvid = v;
	if (FUNC3(cfg->fd, IOETHERSWITCHSETPORT, &p) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHSETPORT)");
	return (0);
}