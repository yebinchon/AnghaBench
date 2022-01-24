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
typedef  int /*<<< orphan*/  u_char ;
struct pptp_msg_stopccrq {int reason; int reserved1; int reserved2; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo,
                    const u_char *dat)
{
	const struct pptp_msg_stopccrq *ptr = (const struct pptp_msg_stopccrq *)dat;

	FUNC1(ptr->reason);
	FUNC0((ndo, " REASON(%u", ptr->reason));
	if (ndo->ndo_vflag) {
		switch (ptr->reason) {
		case 1:
			FUNC0((ndo, ":None"));
			break;
		case 2:
			FUNC0((ndo, ":Stop-Protocol"));
			break;
		case 3:
			FUNC0((ndo, ":Stop-Local-Shutdown"));
			break;
		default:
			FUNC0((ndo, ":?"));
			break;
		}
	}
	FUNC0((ndo, ")"));
	FUNC1(ptr->reserved1);
	FUNC1(ptr->reserved2);

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}