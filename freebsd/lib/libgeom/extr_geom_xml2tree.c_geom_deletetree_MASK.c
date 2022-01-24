#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gprovider {struct gprovider* lg_mode; int /*<<< orphan*/  lg_config; int /*<<< orphan*/  lg_consumer; struct gprovider* lg_name; int /*<<< orphan*/  lg_provider; int /*<<< orphan*/  lg_geom; } ;
struct gmesh {int /*<<< orphan*/  lg_class; struct gprovider* lg_ident; } ;
struct ggeom {struct ggeom* lg_mode; int /*<<< orphan*/  lg_config; int /*<<< orphan*/  lg_consumer; struct ggeom* lg_name; int /*<<< orphan*/  lg_provider; int /*<<< orphan*/  lg_geom; } ;
struct gconsumer {struct gconsumer* lg_mode; int /*<<< orphan*/  lg_config; int /*<<< orphan*/  lg_consumer; struct gconsumer* lg_name; int /*<<< orphan*/  lg_provider; int /*<<< orphan*/  lg_geom; } ;
struct gclass {struct gclass* lg_mode; int /*<<< orphan*/  lg_config; int /*<<< orphan*/  lg_consumer; struct gclass* lg_name; int /*<<< orphan*/  lg_provider; int /*<<< orphan*/  lg_geom; } ;

/* Variables and functions */
 struct gprovider* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gprovider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gprovider*) ; 
 int /*<<< orphan*/  lg_class ; 
 int /*<<< orphan*/  lg_consumer ; 
 int /*<<< orphan*/  lg_geom ; 
 int /*<<< orphan*/  lg_provider ; 

void
FUNC4(struct gmesh *gmp)
{
	struct gclass *cl;
	struct ggeom *ge;
	struct gprovider *pr;
	struct gconsumer *co;

	FUNC3(gmp->lg_ident);
	gmp->lg_ident = NULL;
	for (;;) {
		cl = FUNC0(&gmp->lg_class);
		if (cl == NULL) 
			break;
		FUNC1(cl, lg_class);
		FUNC2(&cl->lg_config);
		if (cl->lg_name) FUNC3(cl->lg_name);
		for (;;) {
			ge = FUNC0(&cl->lg_geom);
			if (ge == NULL) 
				break;
			FUNC1(ge, lg_geom);
			FUNC2(&ge->lg_config);
			if (ge->lg_name) FUNC3(ge->lg_name);
			for (;;) {
				pr = FUNC0(&ge->lg_provider);
				if (pr == NULL) 
					break;
				FUNC1(pr, lg_provider);
				FUNC2(&pr->lg_config);
				if (pr->lg_name) FUNC3(pr->lg_name);
				if (pr->lg_mode) FUNC3(pr->lg_mode);
				FUNC3(pr);
			}
			for (;;) {
				co = FUNC0(&ge->lg_consumer);
				if (co == NULL) 
					break;
				FUNC1(co, lg_consumer);
				FUNC2(&co->lg_config);
				if (co->lg_mode) FUNC3(co->lg_mode);
				FUNC3(co);
			}
			FUNC3(ge);
		}
		FUNC3(cl);
	}
}