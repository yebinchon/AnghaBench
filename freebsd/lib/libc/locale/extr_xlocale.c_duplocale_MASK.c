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
typedef  int /*<<< orphan*/ * locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int XLC_LAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_key ; 
 int /*<<< orphan*/  once_control ; 

locale_t FUNC5(locale_t base)
{
	locale_t new = FUNC2();
	int type;

	FUNC1(&once_control, init_key);

	if (NULL == new) {
		return (NULL);
	}
	
	FUNC0(base);
	FUNC3(new, base);

	for (type=0 ; type<XLC_LAST ; type++) {
		FUNC4(type, base, new);
	}

	return (new);
}