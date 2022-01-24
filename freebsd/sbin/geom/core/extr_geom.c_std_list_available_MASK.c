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
struct gmesh {int dummy; } ;
struct gclass {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 struct gclass* FUNC1 (struct gmesh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gclass_name ; 
 int /*<<< orphan*/  FUNC2 (struct gmesh*) ; 
 int FUNC3 (struct gmesh*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct gmesh mesh;
	struct gclass *classp;
	int error;

	error = FUNC3(&mesh);
	if (error != 0)
		FUNC0(EXIT_FAILURE, error, "Cannot get GEOM tree");
	classp = FUNC1(&mesh, gclass_name);
	FUNC2(&mesh);
	if (classp != NULL)
		return (1);
	return (0);
}