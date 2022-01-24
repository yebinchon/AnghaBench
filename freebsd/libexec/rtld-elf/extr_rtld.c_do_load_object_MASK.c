#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct statfs {int f_flags; char* f_mntonname; } ;
struct stat {int dummy; } ;
struct TYPE_10__ {char* path; int mapsize; int dlopened; int /*<<< orphan*/  mapbase; scalar_t__ textrel; int /*<<< orphan*/  stack_flags; scalar_t__ z_noopen; int /*<<< orphan*/  dynsymcount; int /*<<< orphan*/  valid_hash_gnu; int /*<<< orphan*/  valid_hash_sysv; } ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int MNT_NOEXEC ; 
 int RTLD_LO_DLOPEN ; 
 int RTLD_LO_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTRACE_LOAD_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ dangerous_ld_env ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,struct statfs*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int,char*,struct stat*) ; 
 int /*<<< orphan*/  max_stack_flags ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  obj_count ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  obj_list ; 
 int /*<<< orphan*/  obj_loads ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static Obj_Entry *
FUNC12(int fd, const char *name, char *path, struct stat *sbp,
  int flags)
{
    Obj_Entry *obj;
    struct statfs fs;

    /*
     * but first, make sure that environment variables haven't been
     * used to circumvent the noexec flag on a filesystem.
     */
    if (dangerous_ld_env) {
	if (FUNC5(fd, &fs) != 0) {
	    FUNC2("Cannot fstatfs \"%s\"", FUNC11(path));
	    return NULL;
	}
	if (fs.f_flags & MNT_NOEXEC) {
	    FUNC2("Cannot execute objects on %s", fs.f_mntonname);
	    return NULL;
	}
    }
    FUNC3("loading \"%s\"", FUNC11(path));
    obj = FUNC7(fd, FUNC11(path), sbp);
    if (obj == NULL)
        return NULL;

    /*
     * If DT_SONAME is present in the object, digest_dynamic2 already
     * added it to the object names.
     */
    if (name != NULL)
	FUNC10(obj, name);
    obj->path = path;
    FUNC4(obj, 0);
    FUNC3("%s valid_hash_sysv %d valid_hash_gnu %d dynsymcount %d", obj->path,
	obj->valid_hash_sysv, obj->valid_hash_gnu, obj->dynsymcount);
    if (obj->z_noopen && (flags & (RTLD_LO_DLOPEN | RTLD_LO_TRACE)) ==
      RTLD_LO_DLOPEN) {
	FUNC3("refusing to load non-loadable \"%s\"", obj->path);
	FUNC2("Cannot dlopen non-loadable %s", obj->path);
	FUNC8(obj->mapbase, obj->mapsize);
	FUNC9(obj);
	return (NULL);
    }

    obj->dlopened = (flags & RTLD_LO_DLOPEN) != 0;
    FUNC1(&obj_list, obj, next);
    obj_count++;
    obj_loads++;
    FUNC6(obj);	/* for GDB & dlinfo() */
    max_stack_flags |= obj->stack_flags;

    FUNC3("  %p .. %p: %s", obj->mapbase,
         obj->mapbase + obj->mapsize - 1, obj->path);
    if (obj->textrel)
	FUNC3("  WARNING: %s has impure text", obj->path);
    FUNC0(UTRACE_LOAD_OBJECT, obj, obj->mapbase, obj->mapsize, 0,
	obj->path);    

    return obj;
}