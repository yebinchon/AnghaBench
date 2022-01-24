#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct TYPE_7__ {scalar_t__ id_num; } ;
struct TYPE_6__ {TYPE_3__ request; struct TYPE_6__* next; } ;
typedef  TYPE_1__ TABLE_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 TYPE_1__* NIL ; 
 int NOT_HERE ; 
 int SUCCESS ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_1__* table ; 

int
FUNC3(u_int32_t id_num)
{
	TABLE_ENTRY *ptr;

	if (debug)
		FUNC2(LOG_DEBUG, "delete_invite(%d)", id_num);
	for (ptr = table; ptr != NIL; ptr = ptr->next) {
		if (ptr->request.id_num == id_num)
			break;
		if (debug)
			FUNC1("", &ptr->request);
	}
	if (ptr != NIL) {
		FUNC0(ptr);
		return (SUCCESS);
	}
	return (NOT_HERE);
}