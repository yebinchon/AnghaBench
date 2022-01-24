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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  locale_t ;
struct TYPE_6__ {int _flags; scalar_t__ _file; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int __SNBF ; 
 int __SRW ; 
 int __SWR ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int
FUNC5(FILE * __restrict fp, locale_t locale,
		const wchar_t * __restrict fmt0, va_list ap)

{
	int ret;
	FUNC0(locale);
	FUNC1(fp);
	/* optimise fprintf(stderr) (and other unbuffered Unix files) */
	if ((fp->_flags & (__SNBF|__SWR|__SRW)) == (__SNBF|__SWR) &&
	    fp->_file >= 0)
		ret = FUNC3(fp, locale, fmt0, ap);
	else
		ret = FUNC4(fp, locale, fmt0, ap);
	FUNC2();
	return (ret);
}