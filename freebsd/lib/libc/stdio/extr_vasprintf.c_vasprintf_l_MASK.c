#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  __va_list ;
struct TYPE_5__ {char* _base; int _size; } ;
struct TYPE_6__ {int _flags; char* _p; int _w; TYPE_1__ _bf; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__ FAKE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int __SALC ; 
 int __SSTR ; 
 int __SWR ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 

int
FUNC4(char **str, locale_t locale, const char *fmt, __va_list ap)
{
	FILE f = FAKE_FILE;
	int ret;
	FUNC0(locale);

	f._flags = __SWR | __SSTR | __SALC;
	f._bf._base = f._p = FUNC3(128);
	if (f._bf._base == NULL) {
		*str = NULL;
		errno = ENOMEM;
		return (-1);
	}
	f._bf._size = f._w = 127;		/* Leave room for the NUL */
	ret = FUNC1(&f, locale, fmt, ap);
	if (ret < 0) {
		FUNC2(f._bf._base);
		*str = NULL;
		errno = ENOMEM;
		return (-1);
	}
	*f._p = '\0';
	*str = (char *)f._bf._base;
	return (ret);
}