#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_geom {char* name; int /*<<< orphan*/  consumer; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ ace; TYPE_1__* provider; int /*<<< orphan*/  acw; struct g_geom* geom; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct g_geom*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct g_consumer *cp, boolean_t open_for_read)
{
	struct g_geom *gp;

	FUNC5();

	FUNC1(1, "Detaching from %s.",
	    cp->provider && cp->provider->name ? cp->provider->name : "NULL");

	gp = cp->geom;
	if (open_for_read)
		FUNC2(cp, -1, 0, -1);
	/* Destroy consumer on last close. */
	if (cp->acr == 0 && cp->ace == 0) {
		if (cp->acw > 0)
			FUNC2(cp, 0, -cp->acw, 0);
		if (cp->provider != NULL) {
			FUNC1(1, "Destroying consumer for %s.",
			    cp->provider->name ? cp->provider->name : "NULL");
			FUNC4(cp);
		}
		FUNC3(cp);
	}
	/* Destroy geom if there are no consumers left. */
	if (FUNC0(&gp->consumer)) {
		FUNC1(1, "Destroyed geom %s.", gp->name);
		FUNC6(gp, ENXIO);
	}
}