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
struct objfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * remote ; 
 struct objfile* symfile_objfile ; 

__attribute__((used)) static void
FUNC4(struct objfile *objfile)
{
	static int once = 1;

	FUNC2(objfile);
	FUNC1(objfile);

	if (&kgdb_new_objfile_chain != NULL)
		FUNC0(objfile);

	if (once && objfile != NULL && objfile == symfile_objfile) {
		/*
		 * The initial kernel has just been loaded.  Start the
		 * remote target if we have one.
		 */
		once = 0;
		if (remote != NULL)
			FUNC3 (remote, 0);
	}
}