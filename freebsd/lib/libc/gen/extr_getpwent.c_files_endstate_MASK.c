#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct files_state {TYPE_1__* db; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(void *p)
{
	DB	*db;

	if (p == NULL)
		return;
	db = ((struct files_state *)p)->db;
	if (db != NULL)
		db->close(db);
	FUNC0(p);
}