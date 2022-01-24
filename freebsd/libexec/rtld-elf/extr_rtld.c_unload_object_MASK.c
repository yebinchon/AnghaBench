#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ refcount; scalar_t__ filtees_loaded; int /*<<< orphan*/  path; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  mapbase; scalar_t__ marker; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  UTRACE_UNLOAD_OBJECT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  obj_count ; 
 int /*<<< orphan*/  obj_list ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(Obj_Entry *root, RtldLockState *lockstate)
{
	Obj_Entry marker, *obj, *next;

	FUNC5(root->refcount == 0);

	/*
	 * Pass over the DAG removing unreferenced objects from
	 * appropriate lists.
	 */
	FUNC9(root);

	/* Unmap all objects that are no longer referenced. */
	for (obj = FUNC1(&obj_list); obj != NULL; obj = next) {
		next = FUNC3(obj, next);
		if (obj->marker || obj->refcount != 0)
			continue;
		FUNC0(UTRACE_UNLOAD_OBJECT, obj, obj->mapbase,
		    obj->mapsize, 0, obj->path);
		FUNC6("unloading \"%s\"", obj->path);
		/*
		 * Unlink the object now to prevent new references from
		 * being acquired while the bind lock is dropped in
		 * recursive dlclose() invocations.
		 */
		FUNC4(&obj_list, obj, next);
		obj_count--;

		if (obj->filtees_loaded) {
			if (next != NULL) {
				FUNC7(&marker);
				FUNC2(next, &marker, next);
				FUNC10(obj, lockstate);
				next = FUNC3(&marker, next);
				FUNC4(&obj_list, &marker, next);
			} else
				FUNC10(obj, lockstate);
		}
		FUNC8(obj);
	}
}