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
struct query_params {int dummy; } ;
typedef  int /*<<< orphan*/  ib_slvl_table_t ;
struct TYPE_2__ {int in_port_num; int out_port_num; int /*<<< orphan*/  lid; int /*<<< orphan*/  slvl_tbl; } ;
typedef  TYPE_1__ ib_slvl_table_record_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC3(void *data, struct query_params *p)
{
	ib_slvl_table_record_t *slvl = data;
	ib_slvl_table_t *t = &slvl->slvl_tbl;
	FUNC2("SL2VLTableRecord dump:\n"
	       "\t\tLID........................%u\n"
	       "\t\tInPort.....................%u\n"
	       "\t\tOutPort....................%u\n"
	       "\t\tSL: 0| 1| 2| 3| 4| 5| 6| 7| 8| 9|10|11|12|13|14|15|\n"
	       "\t\tVL:%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u"
	       "|%2u|%2u|%2u|\n",
	       FUNC0(slvl->lid), slvl->in_port_num, slvl->out_port_num,
	       FUNC1(t, 0), FUNC1(t, 1),
	       FUNC1(t, 2), FUNC1(t, 3),
	       FUNC1(t, 4), FUNC1(t, 5),
	       FUNC1(t, 6), FUNC1(t, 7),
	       FUNC1(t, 8), FUNC1(t, 9),
	       FUNC1(t, 10), FUNC1(t, 11),
	       FUNC1(t, 12), FUNC1(t, 13),
	       FUNC1(t, 14), FUNC1(t, 15));
}