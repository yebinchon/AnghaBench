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
struct TYPE_2__ {int port_num; int options; int /*<<< orphan*/  lid; int /*<<< orphan*/  port_info; } ;
typedef  TYPE_1__ ib_portinfo_record_t ;
typedef  int /*<<< orphan*/  ib_port_info_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static void FUNC3(void *data, struct query_params *p)
{
	ib_portinfo_record_t *pir = data;
	ib_port_info_t *pi = &pir->port_info;

	FUNC2("PortInfoRecord dump:\n"
	       "\tRID\n"
	       "\t\tEndPortLid..............%u\n"
	       "\t\tPortNum.................%u\n"
	       "\t\tOptions.................0x%x\n"
	       "\tPortInfo dump:\n",
	       FUNC0(pir->lid), pir->port_num, pir->options);
	FUNC1(pi, 2);
}