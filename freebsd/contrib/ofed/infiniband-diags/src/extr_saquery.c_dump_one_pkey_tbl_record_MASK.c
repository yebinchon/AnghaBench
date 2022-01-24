#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct query_params {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pkey_entry; } ;
struct TYPE_4__ {int port_num; int block_num; int /*<<< orphan*/  lid; TYPE_1__ pkey_tbl; } ;
typedef  TYPE_2__ ib_pkey_table_record_t ;
typedef  int /*<<< orphan*/  ib_net16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void *data, struct query_params *params)
{
	ib_pkey_table_record_t *pktr = data;
	ib_net16_t *p = pktr->pkey_tbl.pkey_entry;
	int i;
	FUNC1("PKeyTableRecord dump:\n"
	       "\t\tLID........................%u\n"
	       "\t\tPort.......................%u\n"
	       "\t\tBlock......................%u\n"
	       "\t\tPKey Table:\n",
	       FUNC0(pktr->lid), pktr->port_num, pktr->block_num);
	for (i = 0; i < 32; i += 8)
		FUNC1("\t\t0x%04x 0x%04x 0x%04x 0x%04x"
		       " 0x%04x 0x%04x 0x%04x 0x%04x\n",
		       FUNC0(p[i + 0]), FUNC0(p[i + 1]),
		       FUNC0(p[i + 2]), FUNC0(p[i + 3]),
		       FUNC0(p[i + 4]), FUNC0(p[i + 5]),
		       FUNC0(p[i + 6]), FUNC0(p[i + 7]));
	FUNC1("\n");
}