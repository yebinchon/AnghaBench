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
struct TYPE_4__ {int obj_id; scalar_t__ object_type; } ;
typedef  TYPE_1__ ses_object ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SESIOC_GETNOBJ ; 
 int /*<<< orphan*/  SESIOC_GETOBJMAP ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,char*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC9(int a, char **v)
{
	ses_object *objp;
	int nobj, fd, i;

	while (*++v) {
		fd = FUNC6(*v, O_RDONLY);
		if (fd < 0) {
			FUNC7(*v);
			continue;
		}
		if (FUNC5(fd, SESIOC_GETNOBJ, (caddr_t) &nobj) < 0) {
			FUNC7("SESIOC_GETNOBJ");
			(void) FUNC1(fd);
			continue;
		}
		FUNC2(stdout, "%s: %d objects\n", *v, nobj);
		if (nobj == 0) {
			(void) FUNC1(fd);
			continue;
		}
		objp = FUNC0(nobj, sizeof (ses_object));
		if (objp == NULL) {
			FUNC7("calloc");
			(void) FUNC1(fd);
			continue;
		}
		if (FUNC5(fd, SESIOC_GETOBJMAP, (caddr_t) objp) < 0) {
			FUNC7("SESIOC_GETOBJMAP");
			(void) FUNC1(fd);
			continue;
		}
		for (i = 0; i < nobj; i++) {
			FUNC8(" Object %d: ID 0x%x Type '%s'\n", i,
			    objp[i].obj_id, FUNC4((int)objp[i].object_type));
		}
		FUNC3(objp);
		(void) FUNC1(fd);
	}
	return (0);
}