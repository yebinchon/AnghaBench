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
typedef  int /*<<< orphan*/  u_int ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
typedef  scalar_t__ bpf_u_int32 ;
typedef  int /*<<< orphan*/  bpf_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_W ; 
 int /*<<< orphan*/  OR_LINKPL ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,struct block*) ; 
 struct block* FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct block* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct block*,struct block*) ; 

__attribute__((used)) static struct block *
FUNC6(compiler_state_t *cstate, bpf_u_int32 addr, bpf_u_int32 mask,
    int dir, int proto, u_int src_off, u_int dst_off)
{
	struct block *b0, *b1;
	u_int offset;

	switch (dir) {

	case Q_SRC:
		offset = src_off;
		break;

	case Q_DST:
		offset = dst_off;
		break;

	case Q_AND:
		b0 = FUNC6(cstate, addr, mask, Q_SRC, proto, src_off, dst_off);
		b1 = FUNC6(cstate, addr, mask, Q_DST, proto, src_off, dst_off);
		FUNC2(b0, b1);
		return b1;

	case Q_OR:
	case Q_DEFAULT:
		b0 = FUNC6(cstate, addr, mask, Q_SRC, proto, src_off, dst_off);
		b1 = FUNC6(cstate, addr, mask, Q_DST, proto, src_off, dst_off);
		FUNC5(b0, b1);
		return b1;

	case Q_ADDR1:
		FUNC1(cstate, "'addr1' and 'address1' are not valid qualifiers for addresses other than 802.11 MAC addresses");
		break;

	case Q_ADDR2:
		FUNC1(cstate, "'addr2' and 'address2' are not valid qualifiers for addresses other than 802.11 MAC addresses");
		break;

	case Q_ADDR3:
		FUNC1(cstate, "'addr3' and 'address3' are not valid qualifiers for addresses other than 802.11 MAC addresses");
		break;

	case Q_ADDR4:
		FUNC1(cstate, "'addr4' and 'address4' are not valid qualifiers for addresses other than 802.11 MAC addresses");
		break;

	case Q_RA:
		FUNC1(cstate, "'ra' is not a valid qualifier for addresses other than 802.11 MAC addresses");
		break;

	case Q_TA:
		FUNC1(cstate, "'ta' is not a valid qualifier for addresses other than 802.11 MAC addresses");
		break;

	default:
		FUNC0();
	}
	b0 = FUNC3(cstate, proto);
	b1 = FUNC4(cstate, OR_LINKPL, offset, BPF_W, (bpf_int32)addr, mask);
	FUNC2(b0, b1);
	return b1;
}