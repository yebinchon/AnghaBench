#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_6__ {scalar_t__ end; } ;
struct TYPE_7__ {TYPE_1__ config; } ;
struct TYPE_9__ {scalar_t__ pos; } ;
struct packet_fixture {TYPE_3__* packet; TYPE_2__ decoder; TYPE_4__ encoder; } ;
typedef  enum pt_packet_type { ____Placeholder_pt_packet_type } pt_packet_type ;
struct TYPE_8__ {int type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  pte_eos ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct packet_fixture *pfix,
				   enum pt_packet_type type)
{
	int size;

	pfix->packet[0].type = type;

	size = FUNC0(&pfix->encoder, &pfix->packet[0]);
	FUNC3(size, 0);

	pfix->decoder.config.end = pfix->encoder.pos - 1;

	size = FUNC1(&pfix->decoder, &pfix->packet[1],
			   sizeof(pfix->packet[1]));
	FUNC2(size, -pte_eos);

	return FUNC4();
}