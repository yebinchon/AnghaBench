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
struct ptunit_result {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  leaf; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;
struct pt_packet {TYPE_2__ payload; int /*<<< orphan*/  type; } ;
struct fetch_fixture {int dummy; } ;
typedef  int /*<<< orphan*/  packet ;

/* Variables and functions */
 int /*<<< orphan*/  fetch_packet ; 
 int /*<<< orphan*/  FUNC0 (struct pt_packet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ppt_mode ; 
 int /*<<< orphan*/  pt_decode_mode ; 
 int /*<<< orphan*/  pt_mol_tsx ; 
 struct ptunit_result FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fetch_fixture*,struct pt_packet*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct fetch_fixture *ffix)
{
	struct pt_packet packet;

	FUNC0(&packet, 0, sizeof(packet));
	packet.type = ppt_mode;
	packet.payload.mode.leaf = pt_mol_tsx;

	FUNC2(fetch_packet, ffix, &packet, &pt_decode_mode);

	return FUNC1();
}