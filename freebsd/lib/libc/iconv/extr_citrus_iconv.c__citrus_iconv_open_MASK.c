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
struct _citrus_iconv_shared {TYPE_1__* ci_ops; } ;
struct _citrus_iconv {struct _citrus_iconv_shared* cv_shared; } ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {int (* io_init_context ) (struct _citrus_iconv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CODESET ; 
 int EINVAL ; 
 int PATH_MAX ; 
 char* _CITRUS_ICONV_ALIAS ; 
 int /*<<< orphan*/  _LOOKUP_CASE_IGNORE ; 
 char* _PATH_ICONV ; 
 char const* FUNC0 (char*,char const*,char*,size_t,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_iconv*) ; 
 int FUNC2 (struct _citrus_iconv_shared**,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct _citrus_iconv* FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct _citrus_iconv_shared*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 
 int FUNC11 (struct _citrus_iconv*) ; 

int
FUNC12(struct _citrus_iconv * __restrict * __restrict rcv,
    const char * __restrict src, const char * __restrict dst)
{
	struct _citrus_iconv *cv = NULL;
	struct _citrus_iconv_shared *ci = NULL;
	char realdst[PATH_MAX], realsrc[PATH_MAX];
#ifdef _PATH_ICONV
	char buf[PATH_MAX], path[PATH_MAX];
#endif
	int ret;

	FUNC3();

	/* GNU behaviour, using locale encoding if "" or "char" is specified */
	if ((FUNC9(src, "") == 0) || (FUNC9(src, "char") == 0))
		src = FUNC5(CODESET);
	if ((FUNC9(dst, "") == 0) || (FUNC9(dst, "char") == 0))
		dst = FUNC5(CODESET);

	/* resolve codeset name aliases */
#ifdef _PATH_ICONV
	snprintf(path, sizeof(path), "%s/%s", _PATH_ICONV, _CITRUS_ICONV_ALIAS);
	strlcpy(realsrc, _lookup_alias(path, src, buf, (size_t)PATH_MAX,
	    _LOOKUP_CASE_IGNORE), (size_t)PATH_MAX);
	strlcpy(realdst, _lookup_alias(path, dst, buf, (size_t)PATH_MAX,
	    _LOOKUP_CASE_IGNORE), (size_t)PATH_MAX);
#else
	FUNC10(realsrc, src, (size_t)PATH_MAX);
	FUNC10(realdst, dst, (size_t)PATH_MAX);
#endif

	/* sanity check */
	if (FUNC8(realsrc, '/') != NULL || FUNC8(realdst, '/'))
		return (EINVAL);

	/* get shared record */
	ret = FUNC2(&ci, realsrc, realdst);
	if (ret)
		return (ret);

	/* create/init context */
	if (*rcv == NULL) {
		cv = FUNC4(sizeof(*cv));
		if (cv == NULL) {
			ret = errno;
			FUNC6(ci);
			return (ret);
		}
		*rcv = cv;
	}
	(*rcv)->cv_shared = ci;
	ret = (*ci->ci_ops->io_init_context)(*rcv);
	if (ret) {
		FUNC6(ci);
		FUNC1(cv);
		return (ret);
	}
	return (0);
}