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
struct _citrus_mapper_area {int /*<<< orphan*/  ma_cache; int /*<<< orphan*/  ma_dir; } ;
struct _citrus_mapper {int cm_refcount; int /*<<< orphan*/ * cm_key; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct _citrus_mapper*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct _citrus_mapper*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct _citrus_mapper*) ; 
 int /*<<< orphan*/  cm_entry ; 
 int /*<<< orphan*/  cm_lock ; 
 int errno ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,char*,size_t,char const**,char const**) ; 
 int FUNC7 (struct _citrus_mapper_area*,struct _citrus_mapper**,char const*,char const*) ; 
 int /*<<< orphan*/  match_func ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 

int
FUNC9(struct _citrus_mapper_area *__restrict ma,
    struct _citrus_mapper * __restrict * __restrict rcm,
    const char * __restrict mapname)
{
	struct _citrus_mapper *cm;
	char linebuf[PATH_MAX];
	const char *module, *variable;
	int hashval, ret;

	variable = NULL;

	FUNC1(&cm_lock);

	/* search in the cache */
	hashval = FUNC5(mapname);
	FUNC3(&ma->ma_cache, cm, cm_entry, match_func, mapname,
	    hashval);
	if (cm) {
		/* found */
		cm->cm_refcount++;
		*rcm = cm;
		ret = 0;
		goto quit;
	}

	/* search mapper entry */
	ret = FUNC6(ma->ma_dir, mapname, linebuf,
	    (size_t)PATH_MAX, &module, &variable);
	if (ret)
		goto quit;

	/* open mapper */
	FUNC0(&cm_lock);
	ret = FUNC7(ma, &cm, module, variable);
	FUNC1(&cm_lock);
	if (ret)
		goto quit;
	cm->cm_key = FUNC8(mapname);
	if (cm->cm_key == NULL) {
		ret = errno;
		FUNC4(cm);
		goto quit;	
	}

	/* insert to the cache */
	cm->cm_refcount = 1;
	FUNC2(&ma->ma_cache, cm, cm_entry, hashval);

	*rcm = cm;
	ret = 0;
quit:
	FUNC0(&cm_lock);

	return (ret);
}