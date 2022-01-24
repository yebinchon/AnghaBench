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
struct TYPE_5__ {unsigned char* _base; int /*<<< orphan*/  _size; } ;
struct TYPE_6__ {int _flags; unsigned char* _p; int /*<<< orphan*/  _w; TYPE_1__ _bf; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 TYPE_2__ FAKE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int __SSTR ; 
 int __SWR ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(char * __restrict str, locale_t locale,
		const char * __restrict fmt, __va_list ap)
{
	int ret;
	FILE f = FAKE_FILE;
	FUNC0(locale);

	f._flags = __SWR | __SSTR;
	f._bf._base = f._p = (unsigned char *)str;
	f._bf._size = f._w = INT_MAX;
	ret = FUNC1(&f, locale, fmt, ap);
	*f._p = 0;
	return (ret);
}