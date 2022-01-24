#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sa_lock; } ;
typedef  TYPE_1__ sa_handle_t ;
struct TYPE_8__ {int sa_size; int /*<<< orphan*/ * sa_data_func; int /*<<< orphan*/  sa_attr; int /*<<< orphan*/ * sa_data; } ;
typedef  TYPE_2__ sa_bulk_attr_t ;
typedef  int /*<<< orphan*/  sa_attr_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SA_LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC4(sa_handle_t *hdl, sa_attr_type_t attr, int *size)
{
	sa_bulk_attr_t bulk;
	int error;

	bulk.sa_data = NULL;
	bulk.sa_attr = attr;
	bulk.sa_data_func = NULL;

	FUNC0(hdl);
	FUNC1(&hdl->sa_lock);
	if ((error = FUNC3(hdl, &bulk, 1, SA_LOOKUP, NULL)) != 0) {
		FUNC2(&hdl->sa_lock);
		return (error);
	}
	*size = bulk.sa_size;

	FUNC2(&hdl->sa_lock);
	return (0);
}