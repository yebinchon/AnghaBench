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
struct eloop_sock_table {int count; TYPE_1__* table; } ;
struct TYPE_3__ {int /*<<< orphan*/  handler; int /*<<< orphan*/  user_data; int /*<<< orphan*/  eloop_data; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct eloop_sock_table *table)
{
	if (table) {
		int i;
		for (i = 0; i < table->count && table->table; i++) {
			FUNC1(MSG_INFO, "ELOOP: remaining socket: "
				   "sock=%d eloop_data=%p user_data=%p "
				   "handler=%p",
				   table->table[i].sock,
				   table->table[i].eloop_data,
				   table->table[i].user_data,
				   table->table[i].handler);
			FUNC3("eloop unregistered socket "
						"handler",
						table->table[i].handler);
			FUNC2("eloop sock", &table->table[i]);
		}
		FUNC0(table->table);
	}
}