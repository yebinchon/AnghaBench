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
struct TYPE_5__ {int /*<<< orphan*/  node_guid_tbl; } ;
struct TYPE_6__ {TYPE_1__ subn; } ;
typedef  TYPE_2__ osm_opensm_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  print_node_report ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(osm_opensm_t * osm, FILE * file)
{
	FUNC1(file, "\n==================================================="
		"====================================================\n"
		"Vendor      : Ty : #  : Sta : LID  : LMC : MTU  : LWA :"
		" LSA  : Port GUID        : Neighbor Port (Port #)\n");
	FUNC0(stdout, &osm->subn.node_guid_tbl, print_node_report, osm);
}