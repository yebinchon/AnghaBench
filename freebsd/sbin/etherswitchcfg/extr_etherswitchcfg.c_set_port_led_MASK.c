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
struct TYPE_4__ {int es_nleds; int* es_led; int /*<<< orphan*/  es_port; } ;
typedef  TYPE_1__ etherswitch_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IOETHERSWITCHGETPORT ; 
 int /*<<< orphan*/  IOETHERSWITCHSETPORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ ** ledstyles ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct cfg *cfg, int argc, char *argv[])
{
	etherswitch_port_t p;
	int led;
	int i;

	if (argc < 3)
		return (-1);

	FUNC0(&p, sizeof(p));
	p.es_port = cfg->unit;
	if (FUNC3(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");

	led = FUNC5(argv[1], NULL, 0);
	if (led < 1 || led > p.es_nleds)
		FUNC2(EX_USAGE, "invalid led number %s; must be between 1 and %d",
			argv[1], p.es_nleds);

	led--;

	for (i=0; ledstyles[i] != NULL; i++) {
		if (FUNC4(argv[2], ledstyles[i]) == 0) {
			p.es_led[led] = i;
			break;
		}
	} 
	if (ledstyles[i] == NULL)
		FUNC2(EX_USAGE, "invalid led style \"%s\"", argv[2]);

	if (FUNC3(cfg->fd, IOETHERSWITCHSETPORT, &p) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHSETPORT)");

	return (0);
}