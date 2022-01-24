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
struct _citrus_iconv_shared {TYPE_1__* ci_ops; int /*<<< orphan*/ * ci_module; void* ci_convname; int /*<<< orphan*/ * ci_closure; } ;
typedef  int (* _citrus_iconv_getops_t ) (TYPE_1__*) ;
struct TYPE_3__ {int (* io_init_shared ) (struct _citrus_iconv_shared*,char const*,char const*) ;int /*<<< orphan*/ * io_convert; int /*<<< orphan*/ * io_uninit_context; int /*<<< orphan*/ * io_init_context; int /*<<< orphan*/ * io_uninit_shared; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_iconv_shared*) ; 
 int errno ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,size_t) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 size_t FUNC6 (char const*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct _citrus_iconv_shared*,char const*,char const*) ; 

__attribute__((used)) static __inline int
FUNC9(struct _citrus_iconv_shared * __restrict * __restrict rci,
    const char * __restrict convname, const char * __restrict src,
    const char * __restrict dst)
{
	struct _citrus_iconv_shared *ci;
	_citrus_iconv_getops_t getops;
	const char *module;
	size_t len_convname;
	int ret;

#ifdef INCOMPATIBLE_WITH_GNU_ICONV
	/*
	 * Sadly, the gnu tools expect iconv to actually parse the
	 * byte stream and don't allow for a pass-through when
	 * the (src,dest) encodings are the same.
	 * See gettext-0.18.3+ NEWS:
	 *   msgfmt now checks PO file headers more strictly with less
	 *   false-positives.
	 * NetBSD don't do this either.
	 */
	module = (strcmp(src, dst) != 0) ? "iconv_std" : "iconv_none";
#else
	module = "iconv_std";
#endif

	/* initialize iconv handle */
	len_convname = FUNC6(convname);
	ci = FUNC3(sizeof(*ci) + len_convname + 1);
	if (!ci) {
		ret = errno;
		goto err;
	}
	ci->ci_module = NULL;
	ci->ci_ops = NULL;
	ci->ci_closure = NULL;
	ci->ci_convname = (void *)&ci[1];
	FUNC4(ci->ci_convname, convname, len_convname + 1);

	/* load module */
	ret = FUNC1(&ci->ci_module, module);
	if (ret)
		goto err;

	/* get operators */
	getops = (_citrus_iconv_getops_t)FUNC0(ci->ci_module,
	    module, "iconv");
	if (!getops) {
		ret = EOPNOTSUPP;
		goto err;
	}
	ci->ci_ops = FUNC3(sizeof(*ci->ci_ops));
	if (!ci->ci_ops) {
		ret = errno;
		goto err;
	}
	ret = (*getops)(ci->ci_ops);
	if (ret)
		goto err;

	if (ci->ci_ops->io_init_shared == NULL ||
	    ci->ci_ops->io_uninit_shared == NULL ||
	    ci->ci_ops->io_init_context == NULL ||
	    ci->ci_ops->io_uninit_context == NULL ||
	    ci->ci_ops->io_convert == NULL) {
		ret = EINVAL;
		goto err;
	}

	/* initialize the converter */
	ret = (*ci->ci_ops->io_init_shared)(ci, src, dst);
	if (ret)
		goto err;

	*rci = ci;

	return (0);
err:
	FUNC2(ci);
	return (ret);
}