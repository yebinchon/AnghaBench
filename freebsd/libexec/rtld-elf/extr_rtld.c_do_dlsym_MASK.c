#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int ti_offset; int /*<<< orphan*/  ti_module; } ;
typedef  TYPE_1__ tls_index ;
struct TYPE_31__ {char* name; } ;
typedef  TYPE_2__ Ver_Entry ;
struct TYPE_35__ {int st_value; int /*<<< orphan*/  st_info; } ;
struct TYPE_34__ {void* relocbase; int /*<<< orphan*/  tlsindex; int /*<<< orphan*/  dagmembers; scalar_t__ mainprog; scalar_t__ marker; } ;
struct TYPE_33__ {int /*<<< orphan*/  env; } ;
struct TYPE_32__ {int flags; TYPE_5__* defobj_out; TYPE_6__* sym_out; TYPE_4__* lockstate; TYPE_2__ const* ventry; } ;
typedef  TYPE_3__ SymLook ;
typedef  TYPE_4__ RtldLockState ;
typedef  TYPE_5__ Obj_Entry ;
typedef  TYPE_6__ Elf_Sym ;
typedef  int /*<<< orphan*/  DoneList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 void* RTLD_DEFAULT ; 
 void* RTLD_NEXT ; 
 void* RTLD_SELF ; 
 scalar_t__ STB_WEAK ; 
 scalar_t__ STT_FUNC ; 
 scalar_t__ STT_GNU_IFUNC ; 
 scalar_t__ STT_TLS ; 
 int SYMLOOK_IN_PLT ; 
 TYPE_5__* FUNC3 (TYPE_5__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTRACE_DLSYM_START ; 
 int /*<<< orphan*/  UTRACE_DLSYM_STOP ; 
 void* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_5__* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC9 (TYPE_5__ const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 void* FUNC12 (TYPE_6__ const*,TYPE_5__ const*) ; 
 int /*<<< orphan*/  next ; 
 TYPE_5__* FUNC13 (void*) ; 
 TYPE_5__ const obj_rtld ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 void* FUNC15 (TYPE_5__ const*,TYPE_6__ const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_3__*,TYPE_5__ const*) ; 
 int FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char const*) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_3__*,TYPE_5__ const*) ; 

__attribute__((used)) static void *
FUNC22(void *handle, const char *name, void *retaddr, const Ver_Entry *ve,
    int flags)
{
    DoneList donelist;
    const Obj_Entry *obj, *defobj;
    const Elf_Sym *def;
    SymLook req;
    RtldLockState lockstate;
    tls_index ti;
    void *sym;
    int res;

    def = NULL;
    defobj = NULL;
    FUNC19(&req, name);
    req.ventry = ve;
    req.flags = flags | SYMLOOK_IN_PLT;
    req.lockstate = &lockstate;

    FUNC2(UTRACE_DLSYM_START, handle, NULL, 0, 0, name);
    FUNC14(rtld_bind_lock, &lockstate);
    if (FUNC16(lockstate.env, 0) != 0)
	    FUNC11(rtld_bind_lock, &lockstate);
    if (handle == NULL || handle == RTLD_NEXT ||
	handle == RTLD_DEFAULT || handle == RTLD_SELF) {

	if ((obj = FUNC13(retaddr)) == NULL) {
	    FUNC5("Cannot determine caller's shared object");
	    FUNC10(rtld_bind_lock, &lockstate);
	    FUNC2(UTRACE_DLSYM_STOP, handle, NULL, 0, 0, name);
	    return NULL;
	}
	if (handle == NULL) {	/* Just the caller's shared object. */
	    res = FUNC21(&req, obj);
	    if (res == 0) {
		def = req.sym_out;
		defobj = req.defobj_out;
	    }
	} else if (handle == RTLD_NEXT || /* Objects after caller's */
		   handle == RTLD_SELF) { /* ... caller included */
	    if (handle == RTLD_NEXT)
		obj = FUNC9(obj);
	    for (; obj != NULL; obj = FUNC3(obj, next)) {
		if (obj->marker)
		    continue;
		res = FUNC21(&req, obj);
		if (res == 0) {
		    if (def == NULL ||
		      FUNC0(req.sym_out->st_info) != STB_WEAK) {
			def = req.sym_out;
			defobj = req.defobj_out;
			if (FUNC0(def->st_info) != STB_WEAK)
			    break;
		    }
		}
	    }
	    /*
	     * Search the dynamic linker itself, and possibly resolve the
	     * symbol from there.  This is how the application links to
	     * dynamic linker services such as dlopen.
	     */
	    if (def == NULL || FUNC0(def->st_info) == STB_WEAK) {
		res = FUNC21(&req, &obj_rtld);
		if (res == 0) {
		    def = req.sym_out;
		    defobj = req.defobj_out;
		}
	    }
	} else {
	    FUNC6(handle == RTLD_DEFAULT);
	    res = FUNC17(&req, obj);
	    if (res == 0) {
		defobj = req.defobj_out;
		def = req.sym_out;
	    }
	}
    } else {
	if ((obj = FUNC7(handle)) == NULL) {
	    FUNC10(rtld_bind_lock, &lockstate);
	    FUNC2(UTRACE_DLSYM_STOP, handle, NULL, 0, 0, name);
	    return NULL;
	}

	FUNC8(&donelist);
	if (obj->mainprog) {
            /* Handle obtained by dlopen(NULL, ...) implies global scope. */
	    res = FUNC18(&req, &donelist);
	    if (res == 0) {
		def = req.sym_out;
		defobj = req.defobj_out;
	    }
	    /*
	     * Search the dynamic linker itself, and possibly resolve the
	     * symbol from there.  This is how the application links to
	     * dynamic linker services such as dlopen.
	     */
	    if (def == NULL || FUNC0(def->st_info) == STB_WEAK) {
		res = FUNC21(&req, &obj_rtld);
		if (res == 0) {
		    def = req.sym_out;
		    defobj = req.defobj_out;
		}
	    }
	}
	else {
	    /* Search the whole DAG rooted at the given object. */
	    res = FUNC20(&req, &obj->dagmembers, &donelist);
	    if (res == 0) {
		def = req.sym_out;
		defobj = req.defobj_out;
	    }
	}
    }

    if (def != NULL) {
	FUNC10(rtld_bind_lock, &lockstate);

	/*
	 * The value required by the caller is derived from the value
	 * of the symbol. this is simply the relocated value of the
	 * symbol.
	 */
	if (FUNC1(def->st_info) == STT_FUNC)
	    sym = FUNC12(def, defobj);
	else if (FUNC1(def->st_info) == STT_GNU_IFUNC)
	    sym = FUNC15(defobj, def);
	else if (FUNC1(def->st_info) == STT_TLS) {
	    ti.ti_module = defobj->tlsindex;
	    ti.ti_offset = def->st_value;
	    sym = FUNC4(&ti);
	} else
	    sym = defobj->relocbase + def->st_value;
	FUNC2(UTRACE_DLSYM_STOP, handle, sym, 0, 0, name);
	return (sym);
    }

    FUNC5("Undefined symbol \"%s%s%s\"", name, ve != NULL ? "@" : "",
      ve != NULL ? ve->name : "");
    FUNC10(rtld_bind_lock, &lockstate);
    FUNC2(UTRACE_DLSYM_STOP, handle, NULL, 0, 0, name);
    return NULL;
}