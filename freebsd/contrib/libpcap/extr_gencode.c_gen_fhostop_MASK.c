#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct block {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pcap_fddipad; } ;
typedef  TYPE_1__ compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  OR_LINKHDR ; 
#define  Q_ADDR1 138 
#define  Q_ADDR2 137 
#define  Q_ADDR3 136 
#define  Q_ADDR4 135 
#define  Q_AND 134 
#define  Q_DEFAULT 133 
#define  Q_DST 132 
#define  Q_OR 131 
#define  Q_RA 130 
#define  Q_SRC 129 
#define  Q_TA 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,struct block*) ; 
 struct block* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct block*,struct block*) ; 

__attribute__((used)) static struct block *
FUNC5(compiler_state_t *cstate, const u_char *eaddr, int dir)
{
	struct block *b0, *b1;

	switch (dir) {
	case Q_SRC:
		return FUNC3(cstate, OR_LINKHDR, 6 + 1 + cstate->pcap_fddipad, 6, eaddr);

	case Q_DST:
		return FUNC3(cstate, OR_LINKHDR, 0 + 1 + cstate->pcap_fddipad, 6, eaddr);

	case Q_AND:
		b0 = FUNC5(cstate, eaddr, Q_SRC);
		b1 = FUNC5(cstate, eaddr, Q_DST);
		FUNC2(b0, b1);
		return b1;

	case Q_DEFAULT:
	case Q_OR:
		b0 = FUNC5(cstate, eaddr, Q_SRC);
		b1 = FUNC5(cstate, eaddr, Q_DST);
		FUNC4(b0, b1);
		return b1;

	case Q_ADDR1:
		FUNC1(cstate, "'addr1' and 'address1' are only supported on 802.11");
		break;

	case Q_ADDR2:
		FUNC1(cstate, "'addr2' and 'address2' are only supported on 802.11");
		break;

	case Q_ADDR3:
		FUNC1(cstate, "'addr3' and 'address3' are only supported on 802.11");
		break;

	case Q_ADDR4:
		FUNC1(cstate, "'addr4' and 'address4' are only supported on 802.11");
		break;

	case Q_RA:
		FUNC1(cstate, "'ra' is only supported on 802.11");
		break;

	case Q_TA:
		FUNC1(cstate, "'ta' is only supported on 802.11");
		break;
	}
	FUNC0();
	/* NOTREACHED */
}