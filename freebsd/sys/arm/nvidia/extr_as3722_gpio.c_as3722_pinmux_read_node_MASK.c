#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct as3722_softc {int dummy; } ;
struct as3722_pincfg {int /*<<< orphan*/  flags; int /*<<< orphan*/ * function; } ;
typedef  int /*<<< orphan*/  phandle_t ;
struct TYPE_3__ {int /*<<< orphan*/  config; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* as3722_cfg_names ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(struct as3722_softc *sc, phandle_t node,
     struct as3722_pincfg *cfg, char **pins, int *lpins)
{
	int rv, i;

	*lpins = FUNC0(node, "pins", (void **)pins);
	if (*lpins <= 0)
		return (ENOENT);

	/* Read function (mux) settings. */
	rv = FUNC0(node, "function", (void **)&cfg->function);
	if (rv <= 0)
		cfg->function = NULL;

	/* Read boolean properties. */
	for (i = 0; i < FUNC2(as3722_cfg_names); i++) {
		if (FUNC1(node, as3722_cfg_names[i].name))
			cfg->flags |= as3722_cfg_names[i].config;
	}
	return (0);
}