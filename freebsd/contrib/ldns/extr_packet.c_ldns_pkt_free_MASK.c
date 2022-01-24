#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  _answerfrom; int /*<<< orphan*/  _edns_data; int /*<<< orphan*/  _tsig_rr; int /*<<< orphan*/  _additional; int /*<<< orphan*/  _authority; int /*<<< orphan*/  _answer; int /*<<< orphan*/  _question; struct TYPE_4__* _header; } ;
typedef  TYPE_1__ ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(ldns_pkt *packet)
{
	if (packet) {
		FUNC0(packet->_header);
		FUNC3(packet->_question);
		FUNC3(packet->_answer);
		FUNC3(packet->_authority);
		FUNC3(packet->_additional);
		FUNC2(packet->_tsig_rr);
		FUNC1(packet->_edns_data);
		FUNC1(packet->_answerfrom);
		FUNC0(packet);
	}
}