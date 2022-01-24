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
typedef  int /*<<< orphan*/  u_char ;
struct pptp_msg_wen {int /*<<< orphan*/  align_err; int /*<<< orphan*/  timeout_err; int /*<<< orphan*/  buffer_overrun; int /*<<< orphan*/  hardware_overrun; int /*<<< orphan*/  framing_err; int /*<<< orphan*/  crc_err; int /*<<< orphan*/  reserved1; int /*<<< orphan*/  peer_call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
               const u_char *dat)
{
	const struct pptp_msg_wen *ptr = (const struct pptp_msg_wen *)dat;

	FUNC2(ptr->peer_call_id);
	FUNC3(ndo, &ptr->peer_call_id);
	FUNC2(ptr->reserved1);
	FUNC2(ptr->crc_err);
	FUNC1((ndo, " CRC_ERR(%u)", FUNC0(&ptr->crc_err)));
	FUNC2(ptr->framing_err);
	FUNC1((ndo, " FRAMING_ERR(%u)", FUNC0(&ptr->framing_err)));
	FUNC2(ptr->hardware_overrun);
	FUNC1((ndo, " HARDWARE_OVERRUN(%u)", FUNC0(&ptr->hardware_overrun)));
	FUNC2(ptr->buffer_overrun);
	FUNC1((ndo, " BUFFER_OVERRUN(%u)", FUNC0(&ptr->buffer_overrun)));
	FUNC2(ptr->timeout_err);
	FUNC1((ndo, " TIMEOUT_ERR(%u)", FUNC0(&ptr->timeout_err)));
	FUNC2(ptr->align_err);
	FUNC1((ndo, " ALIGN_ERR(%u)", FUNC0(&ptr->align_err)));

	return;

trunc:
	FUNC1((ndo, "%s", tstr));
}