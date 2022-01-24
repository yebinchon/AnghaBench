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
struct TYPE_2__ {int from_port_num; int to_port_num; int /*<<< orphan*/  to_lid; int /*<<< orphan*/  from_lid; } ;
typedef  TYPE_1__ ib_link_record_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(void *data, struct query_params *p)
{
	ib_link_record_t *lr = data;
	FUNC1("LinkRecord dump:\n"
	       "\t\tFromLID....................%u\n"
	       "\t\tFromPort...................%u\n"
	       "\t\tToPort.....................%u\n"
	       "\t\tToLID......................%u\n",
	       FUNC0(lr->from_lid), lr->from_port_num,
	       lr->to_port_num, FUNC0(lr->to_lid));
}