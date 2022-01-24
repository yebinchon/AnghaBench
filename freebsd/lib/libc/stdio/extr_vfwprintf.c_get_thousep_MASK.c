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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
struct TYPE_2__ {int /*<<< orphan*/  thousands_sep; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_CUR_MAX ; 
 int /*<<< orphan*/  initial_mbs ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline wchar_t
FUNC2(locale_t locale)
{
	mbstate_t mbs;
	wchar_t thousep;
	int nconv;

	mbs = initial_mbs;
	nconv = FUNC1(&thousep, FUNC0(locale)->thousands_sep,
	    MB_CUR_MAX, &mbs);
	if (nconv == (size_t)-1 || nconv == (size_t)-2)
		thousep = '\0';    /* failsafe */
	return (thousep);
}