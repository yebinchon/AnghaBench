#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int refcount; int /*<<< orphan*/  linkmap; int /*<<< orphan*/  dl_refcount; int /*<<< orphan*/ * path; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RT_CONSISTENT ; 
 int /*<<< orphan*/  RT_DELETE ; 
 int /*<<< orphan*/  UTRACE_DLCLOSE_START ; 
 int /*<<< orphan*/  UTRACE_DLCLOSE_STOP ; 
 TYPE_1__* FUNC2 (void*) ; 
 int /*<<< orphan*/  list_fini ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(void *handle, RtldLockState *lockstate)
{
    Obj_Entry *root;

    root = FUNC2(handle);
    if (root == NULL)
	return -1;
    FUNC1(UTRACE_DLCLOSE_START, handle, NULL, 0, root->dl_refcount,
	root->path);

    /* Unreference the object and its dependencies. */
    root->dl_refcount--;

    if (root->refcount == 1) {
	/*
	 * The object will be no longer referenced, so we must unload it.
	 * First, call the fini functions.
	 */
	FUNC3(&list_fini, root, lockstate);

	FUNC5(root);

	/* Finish cleaning up the newly-unreferenced objects. */
	FUNC0(RT_DELETE,&root->linkmap);
	FUNC4(root, lockstate);
	FUNC0(RT_CONSISTENT,NULL);
    } else
	FUNC5(root);

    FUNC1(UTRACE_DLCLOSE_STOP, handle, NULL, 0, 0, NULL);
    return 0;
}