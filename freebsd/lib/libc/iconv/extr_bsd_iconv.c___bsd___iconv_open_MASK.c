#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct _citrus_iconv {TYPE_1__* cv_shared; } ;
typedef  int /*<<< orphan*/  iconv_t ;
struct TYPE_2__ {int ci_ilseq_invalid; int /*<<< orphan*/ * ci_hooks; int /*<<< orphan*/  ci_discard_ilseq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FUNC0 (struct _citrus_iconv**,char const*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,int) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static iconv_t
FUNC5(const char *out, const char *in, struct _citrus_iconv *handle)
{
	const char *out_slashes;
	char *out_noslashes;
	int ret;

	/*
	 * Remove anything following a //, as these are options (like
	 * //ignore, //translate, etc) and we just don't handle them.
	 * This is for compatibility with software that uses these
	 * blindly.
	 */
	out_slashes = FUNC4(out, "//");
	if (out_slashes != NULL) {
		out_noslashes = FUNC3(out, out_slashes - out);
		if (out_noslashes == NULL) {
			errno = ENOMEM;
			return ((iconv_t)-1);
		}
		ret = FUNC0(&handle, in, out_noslashes);
		FUNC1(out_noslashes);
	} else {
		ret = FUNC0(&handle, in, out);
	}

	if (ret) {
		errno = ret == ENOENT ? EINVAL : ret;
		return ((iconv_t)-1);
	}

	handle->cv_shared->ci_discard_ilseq = FUNC2(out, "//IGNORE");
	handle->cv_shared->ci_ilseq_invalid = false;
	handle->cv_shared->ci_hooks = NULL;

	return ((iconv_t)(void *)handle);
}