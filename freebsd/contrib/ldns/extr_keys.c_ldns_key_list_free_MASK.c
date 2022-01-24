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
struct TYPE_6__ {struct TYPE_6__* _keys; } ;
typedef  TYPE_1__ ldns_key_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 size_t FUNC3 (TYPE_1__*) ; 

void
FUNC4(ldns_key_list *key_list)
{
	size_t i;
	for (i = 0; i < FUNC3(key_list); i++) {
		FUNC1(FUNC2(key_list, i));
	}
	FUNC0(key_list->_keys);
	FUNC0(key_list);
}