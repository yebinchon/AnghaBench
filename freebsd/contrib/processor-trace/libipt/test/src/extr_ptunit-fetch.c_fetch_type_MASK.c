#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct pt_packet {int type; } ;
struct pt_decoder_function {int dummy; } ;
struct fetch_fixture {int dummy; } ;
typedef  int /*<<< orphan*/  packet ;
typedef  enum pt_packet_type { ____Placeholder_pt_packet_type } pt_packet_type ;

/* Variables and functions */
 int /*<<< orphan*/  fetch_packet ; 
 int /*<<< orphan*/  FUNC0 (struct pt_packet*,int /*<<< orphan*/ ,int) ; 
 struct ptunit_result FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fetch_fixture*,struct pt_packet*,struct pt_decoder_function const*) ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct fetch_fixture *ffix,
				       enum pt_packet_type type,
				       const struct pt_decoder_function *dfun)
{
	struct pt_packet packet;

	FUNC0(&packet, 0, sizeof(packet));
	packet.type = type;

	FUNC2(fetch_packet, ffix, &packet, dfun);

	return FUNC1();
}