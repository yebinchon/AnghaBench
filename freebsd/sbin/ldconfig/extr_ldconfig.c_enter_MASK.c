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
struct shlib_list {char* name; scalar_t__ major; int ndewey; int minor; char* path; struct shlib_list* next; int /*<<< orphan*/  dewey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int*,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ major ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,...) ; 
 struct shlib_list* shlib_head ; 
 struct shlib_list** shlib_tail ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 void* FUNC6 (char*) ; 
 scalar_t__ verbose ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(char *dir, char *file, char *name, int dewey[], int ndewey)
{
	struct shlib_list	*shp;

	for (shp = shlib_head; shp; shp = shp->next) {
		if (FUNC5(name, shp->name) != 0 || major != shp->major)
			continue;

		/* Name matches existing entry */
		if (FUNC1(dewey, ndewey, shp->dewey, shp->ndewey) > 0) {

			/* Update this entry with higher versioned lib */
			if (verbose)
				FUNC4("Updating lib%s.%d.%d to %s/%s\n",
					shp->name, shp->major, shp->minor,
					dir, file);

			FUNC3(shp->name);
			shp->name = FUNC6(name);
			FUNC3(shp->path);
			shp->path = FUNC2(dir, "/", file);
			FUNC0(dewey, shp->dewey, sizeof(shp->dewey));
			shp->ndewey = ndewey;
		}
		break;
	}

	if (shp)
		/* Name exists: older version or just updated */
		return;

	/* Allocate new list element */
	if (verbose)
		FUNC4("Adding %s/%s\n", dir, file);

	shp = (struct shlib_list *)FUNC7(sizeof *shp);
	shp->name = FUNC6(name);
	shp->path = FUNC2(dir, "/", file);
	FUNC0(dewey, shp->dewey, sizeof(shp->dewey));
	shp->ndewey = ndewey;
	shp->next = NULL;

	*shlib_tail = shp;
	shlib_tail = &shp->next;
}