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
struct _memstream {int dummy; } ;
struct TYPE_5__ {int chr; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef  TYPE_2__ _citrus_prop_object_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct _memstream*,int*) ; 
 int FUNC1 (struct _memstream*,TYPE_2__*) ; 
 int FUNC2 (struct _memstream*) ; 
 int /*<<< orphan*/  FUNC3 (struct _memstream*) ; 
 int /*<<< orphan*/  FUNC4 (struct _memstream*,int) ; 

__attribute__((used)) static int
FUNC5(struct _memstream * __restrict ms,
    _citrus_prop_object_t * __restrict obj)
{
	int ch, errnum;

	FUNC3(ms);
	ch = FUNC2(ms);
	if (ch != '\'') {
		FUNC4(ms, ch);
		return (FUNC1(ms, obj));
	}
	errnum = FUNC0(ms, &ch);
	if (errnum != 0)
		return (errnum);
	obj->u.chr = ch;
	ch = FUNC2(ms);
	if (ch != '\'')
		return (EINVAL);
	return (0);
}