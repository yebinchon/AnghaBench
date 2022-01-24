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
struct gmesh {int dummy; } ;
struct ggeom {TYPE_1__* lg_class; } ;
struct TYPE_2__ {char* lg_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct ggeom* FUNC2 (struct gmesh*,char const*) ; 
 int FUNC3 (struct gmesh*) ; 
 int /*<<< orphan*/  FUNC4 (struct ggeom*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(const char *provider_name)
{
	struct gmesh mesh;
	struct ggeom *gp;
	int error;

	error = FUNC3(&mesh);
	if (error != 0)
		FUNC0(EXIT_FAILURE, error, "Cannot get GEOM tree");

	gp = FUNC2(&mesh, provider_name);
	if (gp == NULL)
		FUNC1(EXIT_FAILURE, "Cannot find provider '%s'.", provider_name);

	FUNC5("Geom class: %s\n", gp->lg_class->lg_name);
	FUNC4(gp);
}