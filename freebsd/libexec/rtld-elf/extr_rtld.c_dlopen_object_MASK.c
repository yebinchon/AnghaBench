#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int z_nodelete; int ref_nodel; int /*<<< orphan*/  linkmap; int /*<<< orphan*/  dl_refcount; int /*<<< orphan*/  path; int /*<<< orphan*/  dagmembers; scalar_t__ static_tls; int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  int /*<<< orphan*/  Objlist ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int RTLD_GLOBAL ; 
 int RTLD_LO_DLOPEN ; 
 int RTLD_LO_EARLY ; 
 int RTLD_LO_NODELETE ; 
 int RTLD_LO_TRACE ; 
 int RTLD_MODEMASK ; 
 int RTLD_NOW ; 
 int /*<<< orphan*/  RT_ADD ; 
 int /*<<< orphan*/  RT_CONSISTENT ; 
 int /*<<< orphan*/  SYMLOOK_EARLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTRACE_DLOPEN_STOP ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ld_tracing ; 
 int /*<<< orphan*/  list_global ; 
 int FUNC15 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC16 (char const*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  obj_entry_q ; 
 int /*<<< orphan*/  obj_list ; 
 TYPE_1__* obj_main ; 
 int /*<<< orphan*/  obj_rtld ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int FUNC26 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 int FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Obj_Entry *
FUNC30(const char *name, int fd, Obj_Entry *refobj, int lo_flags,
    int mode, RtldLockState *lockstate)
{
    Obj_Entry *old_obj_tail;
    Obj_Entry *obj;
    Objlist initlist;
    RtldLockState mlockstate;
    int result;

    FUNC22(&initlist);

    if (lockstate == NULL && !(lo_flags & RTLD_LO_EARLY)) {
	FUNC29(rtld_bind_lock, &mlockstate);
	lockstate = &mlockstate;
    }
    FUNC0(RT_ADD,NULL);

    old_obj_tail = FUNC10(FUNC2(&obj_list, obj_entry_q));
    obj = NULL;
    if (name == NULL && fd == -1) {
	obj = obj_main;
	obj->refcount++;
    } else {
	obj = FUNC16(name, fd, refobj, lo_flags);
    }

    if (obj) {
	obj->dl_refcount++;
	if (mode & RTLD_GLOBAL && FUNC21(&list_global, obj) == NULL)
	    FUNC23(&list_global, obj);
	if (FUNC11(old_obj_tail) != NULL) {
	    /* We loaded something new. */
	    FUNC5(FUNC11(old_obj_tail) == obj);
	    result = 0;
	    if ((lo_flags & RTLD_LO_EARLY) == 0 && obj->static_tls &&
	      !FUNC4(obj)) {
		FUNC3("%s: No space available "
		  "for static Thread Local Storage", obj->path);
		result = -1;
	    }
	    if (result != -1)
		result = FUNC15(obj, lo_flags & (RTLD_LO_DLOPEN |
		    RTLD_LO_EARLY));
	    FUNC12(obj);
	    FUNC25(obj);
	    if (result != -1)
		result = FUNC27(&obj->dagmembers);
	    if (result != -1 && ld_tracing)
		goto trace;
	    if (result == -1 || FUNC26(obj,
	      (mode & RTLD_MODEMASK) == RTLD_NOW, &obj_rtld,
	      (lo_flags & RTLD_LO_EARLY) ? SYMLOOK_EARLY : 0,
	      lockstate) == -1) {
		FUNC8(obj, lockstate);
		obj = NULL;
	    } else if (lo_flags & RTLD_LO_EARLY) {
		/*
		 * Do not call the init functions for early loaded
		 * filtees.  The image is still not initialized enough
		 * for them to work.
		 *
		 * Our object is found by the global object list and
		 * will be ordered among all init calls done right
		 * before transferring control to main.
		 */
	    } else {
		/* Make list of init functions to call. */
		FUNC13(obj, obj, &initlist);
	    }
	    /*
	     * Process all no_delete or global objects here, given
	     * them own DAGs to prevent their dependencies from being
	     * unloaded.  This has to be done after we have loaded all
	     * of the dependencies, so that we do not miss any.
	     */
	    if (obj != NULL)
		FUNC24(obj);
	} else {
	    /*
	     * Bump the reference counts for objects on this DAG.  If
	     * this is the first dlopen() call for the object that was
	     * already loaded as a dependency, initialize the dag
	     * starting at it.
	     */
	    FUNC12(obj);
	    FUNC25(obj);

	    if ((lo_flags & RTLD_LO_TRACE) != 0)
		goto trace;
	}
	if (obj != NULL && ((lo_flags & RTLD_LO_NODELETE) != 0 ||
	  obj->z_nodelete) && !obj->ref_nodel) {
	    FUNC6("obj %s nodelete", obj->path);
	    FUNC25(obj);
	    obj->z_nodelete = obj->ref_nodel = true;
	}
    }

    FUNC1(UTRACE_DLOPEN_STOP, obj, NULL, 0, obj ? obj->dl_refcount : 0,
	name);
    FUNC0(RT_CONSISTENT,obj ? &obj->linkmap : NULL);

    if ((lo_flags & RTLD_LO_EARLY) == 0) {
	FUNC18(lockstate);
	if (obj != NULL)
	    FUNC7(&initlist, lockstate);
    }

    if (FUNC14(&initlist, (mode & RTLD_MODEMASK) == RTLD_NOW,
      (lo_flags & RTLD_LO_EARLY) ? SYMLOOK_EARLY : 0,
      lockstate) == -1) {
	FUNC20(&initlist);
	FUNC8(obj, lockstate);
	if (lockstate == &mlockstate)
	    FUNC17(rtld_bind_lock, lockstate);
	return (NULL);
    }

    if (!(lo_flags & RTLD_LO_EARLY)) {
	/* Call the init functions. */
	FUNC19(&initlist, lockstate);
    }
    FUNC20(&initlist);
    if (lockstate == &mlockstate)
	FUNC17(rtld_bind_lock, lockstate);
    return obj;
trace:
    FUNC28(obj);
    if (lockstate == &mlockstate)
	FUNC17(rtld_bind_lock, lockstate);
    FUNC9(0);
}