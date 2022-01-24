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
struct TYPE_4__ {int /*<<< orphan*/  tos_metric; int /*<<< orphan*/  tos_type; } ;
struct TYPE_3__ {int link_tos_count; } ;
union un_tos {TYPE_2__ metrics; TYPE_1__ link; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (union un_tos const) ; 
 int /*<<< orphan*/  ospf_topology_values ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                       const union un_tos *tos)
{
    int metric_count;
    int toscount;

    toscount = tos->link.link_tos_count+1;
    metric_count = 0;

    /*
     * All but the first metric contain a valid topology id.
     */
    while (toscount > 0) {
        FUNC2(*tos);
        FUNC1((ndo, "\n\t\ttopology %s (%u), metric %u",
               FUNC3(ospf_topology_values, "Unknown",
                       metric_count ? tos->metrics.tos_type : 0),
               metric_count ? tos->metrics.tos_type : 0,
               FUNC0(&tos->metrics.tos_metric)));
        metric_count++;
        tos++;
        toscount--;
    }
    return 0;
trunc:
    return 1;
}