#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_10__ {scalar_t__ end; } ;
struct TYPE_11__ {TYPE_3__ config; } ;
struct TYPE_13__ {scalar_t__ pos; } ;
struct packet_fixture {TYPE_5__* packet; TYPE_4__ decoder; TYPE_6__ encoder; } ;
typedef  enum pt_mode_leaf { ____Placeholder_pt_mode_leaf } pt_mode_leaf ;
struct TYPE_8__ {int leaf; } ;
struct TYPE_9__ {TYPE_1__ mode; } ;
struct TYPE_12__ {TYPE_2__ payload; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ppt_mode ; 
 int FUNC0 (TYPE_6__*,TYPE_5__*) ; 
 int FUNC1 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  pte_eos ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct packet_fixture *pfix,
					enum pt_mode_leaf leaf)
{
	int size;

	pfix->packet[0].type = ppt_mode;
	pfix->packet[0].payload.mode.leaf = leaf;

	size = FUNC0(&pfix->encoder, &pfix->packet[0]);
	FUNC3(size, 0);

	pfix->decoder.config.end = pfix->encoder.pos - 1;

	size = FUNC1(&pfix->decoder, &pfix->packet[1],
			   sizeof(pfix->packet[1]));
	FUNC2(size, -pte_eos);

	return FUNC4();
}