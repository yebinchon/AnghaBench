#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _citrus_mapper_area {int /*<<< orphan*/  ma_dir; } ;
struct _citrus_mapper {int /*<<< orphan*/ * cm_traits; TYPE_1__* cm_ops; int /*<<< orphan*/ * cm_module; int /*<<< orphan*/ * cm_key; scalar_t__ cm_refcount; int /*<<< orphan*/ * cm_closure; } ;
typedef  int (* _citrus_mapper_getops_t ) (TYPE_1__*) ;
struct TYPE_3__ {int (* mo_init ) (struct _citrus_mapper_area*,struct _citrus_mapper*,int /*<<< orphan*/ ,void const*,scalar_t__,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  mo_init_state; int /*<<< orphan*/  mo_convert; int /*<<< orphan*/  mo_uninit; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int errno ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct _citrus_mapper*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct _citrus_mapper_area*,struct _citrus_mapper*,int /*<<< orphan*/ ,void const*,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(struct _citrus_mapper_area *__restrict ma,
    struct _citrus_mapper * __restrict * __restrict rcm,
    const char * __restrict module,
    const char * __restrict variable)
{
	struct _citrus_mapper *cm;
	_citrus_mapper_getops_t getops;
	int ret;

	/* initialize mapper handle */
	cm = FUNC2(sizeof(*cm));
	if (!cm)
		return (errno);

	cm->cm_module = NULL;
	cm->cm_ops = NULL;
	cm->cm_closure = NULL;
	cm->cm_traits = NULL;
	cm->cm_refcount = 0;
	cm->cm_key = NULL;

	/* load module */
	ret = FUNC1(&cm->cm_module, module);
	if (ret)
		goto err;

	/* get operators */
	getops = (_citrus_mapper_getops_t)
	    FUNC0(cm->cm_module, module, "mapper");
	if (!getops) {
		ret = EOPNOTSUPP;
		goto err;
	}
	cm->cm_ops = FUNC2(sizeof(*cm->cm_ops));
	if (!cm->cm_ops) {
		ret = errno;
		goto err;
	}
	ret = (*getops)(cm->cm_ops);
	if (ret)
		goto err;

	if (!cm->cm_ops->mo_init ||
	    !cm->cm_ops->mo_uninit ||
	    !cm->cm_ops->mo_convert ||
	    !cm->cm_ops->mo_init_state) {
		ret = EINVAL;
		goto err;
	}

	/* allocate traits structure */
	cm->cm_traits = FUNC2(sizeof(*cm->cm_traits));
	if (cm->cm_traits == NULL) {
		ret = errno;
		goto err;
	}
	/* initialize the mapper */
	ret = (*cm->cm_ops->mo_init)(ma, cm, ma->ma_dir,
	    (const void *)variable, FUNC4(variable) + 1,
	    cm->cm_traits, sizeof(*cm->cm_traits));
	if (ret)
		goto err;

	*rcm = cm;

	return (0);

err:
	FUNC3(cm);
	return (ret);
}