#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _memstream {int dummy; } ;
struct TYPE_4__ {int boolean; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ _citrus_prop_object_t ;

/* Variables and functions */
 int EINVAL ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _memstream*) ; 
 int /*<<< orphan*/  FUNC2 (struct _memstream*) ; 

__attribute__((used)) static int
FUNC3(struct _memstream * __restrict ms,
    _citrus_prop_object_t * __restrict obj)
{

	FUNC2(ms);
	switch (FUNC0(FUNC1(ms))) {
	case 't':
		if (FUNC0(FUNC1(ms)) == 'r' &&
		    FUNC0(FUNC1(ms)) == 'u' &&
		    FUNC0(FUNC1(ms)) == 'e') {
			obj->u.boolean = true;
			return (0);
		}
		break;
	case 'f':
		if (FUNC0(FUNC1(ms)) == 'a' &&
		    FUNC0(FUNC1(ms)) == 'l' &&
		    FUNC0(FUNC1(ms)) == 's' &&
		    FUNC0(FUNC1(ms)) == 'e') {
			obj->u.boolean = false;
			return (0);
		}
	}
	return (EINVAL);
}