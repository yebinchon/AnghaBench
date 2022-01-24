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
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERTYPE_IP ; 
#define  IPPROTO_SCTP 131 
#define  IPPROTO_TCP 130 
#define  IPPROTO_UDP 129 
#define  PROTO_UNDEF 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 struct block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct block*,struct block*) ; 
 struct block* FUNC4 (int /*<<< orphan*/ *,int,int,int const,int) ; 

__attribute__((used)) static struct block *
FUNC5(compiler_state_t *cstate, int port1, int port2, int ip_proto,
    int dir)
{
	struct block *b0, *b1, *tmp;

	/* link proto ip */
	b0 = FUNC2(cstate, ETHERTYPE_IP);

	switch (ip_proto) {
	case IPPROTO_UDP:
	case IPPROTO_TCP:
	case IPPROTO_SCTP:
		b1 = FUNC4(cstate, port1, port2, ip_proto, dir);
		break;

	case PROTO_UNDEF:
		tmp = FUNC4(cstate, port1, port2, IPPROTO_TCP, dir);
		b1 = FUNC4(cstate, port1, port2, IPPROTO_UDP, dir);
		FUNC3(tmp, b1);
		tmp = FUNC4(cstate, port1, port2, IPPROTO_SCTP, dir);
		FUNC3(tmp, b1);
		break;

	default:
		FUNC0();
	}
	FUNC1(b0, b1);
	return b1;
}