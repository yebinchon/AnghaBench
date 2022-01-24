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
typedef  int uint8_t ;
struct x86emu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,int) ; 
 int FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC6 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC8 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC9 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC10 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC11 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC12 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC13 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC14 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC15 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC16 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC17 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC18 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC19 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC20 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC21 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC22 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC23 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC24 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC25 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC26 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC27 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC28 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC29 (struct x86emu*) ; 
 int FUNC30 (int,int) ; 

__attribute__((used)) static void
FUNC31(struct x86emu * emu)
{
	uint8_t op2;

	op2 = FUNC3(emu);

	switch (op2) {
	/* 0x00 Group F (ring 0 PM)      */
	/* 0x01 Group G (ring 0 PM)      */
	/* 0x02 lar (ring 0 PM)          */
	/* 0x03 lsl (ring 0 PM)          */
	/* 0x05 loadall (undocumented)   */
	/* 0x06 clts (ring 0 PM)         */
	/* 0x07 loadall (undocumented)   */
	/* 0x08 invd (ring 0 PM)         */
	/* 0x09 wbinvd (ring 0 PM)       */

	/* 0x20 mov reg32(op2); break;creg (ring 0 PM) */
	/* 0x21 mov reg32(op2); break;dreg (ring 0 PM) */
	/* 0x22 mov creg(op2); break;reg32 (ring 0 PM) */
	/* 0x23 mov dreg(op2); break;reg32 (ring 0 PM) */
	/* 0x24 mov reg32(op2); break;treg (ring 0 PM) */
	/* 0x26 mov treg(op2); break;reg32 (ring 0 PM) */

	case 0x31:
		FUNC24(emu);
		break;

	case 0x80:
		FUNC1(emu, FUNC0(F_OF));
		break;
	case 0x81:
		FUNC1(emu, !FUNC0(F_OF));
		break;
	case 0x82:
		FUNC1(emu, FUNC0(F_CF));
		break;
	case 0x83:
		FUNC1(emu, !FUNC0(F_CF));
		break;
	case 0x84:
		FUNC1(emu, FUNC0(F_ZF));
		break;
	case 0x85:
		FUNC1(emu, !FUNC0(F_ZF));
		break;
	case 0x86:
		FUNC1(emu, FUNC0(F_CF) || FUNC0(F_ZF));
		break;
	case 0x87:
		FUNC1(emu, !(FUNC0(F_CF) || FUNC0(F_ZF)));
		break;
	case 0x88:
		FUNC1(emu, FUNC0(F_SF));
		break;
	case 0x89:
		FUNC1(emu, !FUNC0(F_SF));
		break;
	case 0x8a:
		FUNC1(emu, FUNC0(F_PF));
		break;
	case 0x8b:
		FUNC1(emu, !FUNC0(F_PF));
		break;
	case 0x8c:
		FUNC1(emu, FUNC30(FUNC0(F_SF),
		    FUNC0(F_OF)));
		break;
	case 0x8d:
		FUNC1(emu, !(FUNC30(FUNC0(F_SF),
		    FUNC0(F_OF))));
		break;
	case 0x8e:
		FUNC1(emu, (FUNC30(FUNC0(F_SF), FUNC0(F_OF))
		    || FUNC0(F_ZF)));
		break;
	case 0x8f:
		FUNC1(emu, 
		    !(FUNC30(FUNC0(F_SF), FUNC0(F_OF)) ||
		    FUNC0(F_ZF)));
		break;

	case 0x90:
		FUNC2(emu, FUNC0(F_OF));
		break;
	case 0x91:
		FUNC2(emu, !FUNC0(F_OF));
		break;
	case 0x92:
		FUNC2(emu, FUNC0(F_CF));
		break;
	case 0x93:
		FUNC2(emu, !FUNC0(F_CF));
		break;
	case 0x94:
		FUNC2(emu, FUNC0(F_ZF));
		break;
	case 0x95:
		FUNC2(emu, !FUNC0(F_ZF));
		break;
	case 0x96:
		FUNC2(emu, FUNC0(F_CF) || FUNC0(F_ZF));
		break;
	case 0x97:
		FUNC2(emu, !(FUNC0(F_CF) || FUNC0(F_ZF)));
		break;
	case 0x98:
		FUNC2(emu, FUNC0(F_SF));
		break;
	case 0x99:
		FUNC2(emu, !FUNC0(F_SF));
		break;
	case 0x9a:
		FUNC2(emu, FUNC0(F_PF));
		break;
	case 0x9b:
		FUNC2(emu, !FUNC0(F_PF));
		break;
	case 0x9c:
		FUNC2(emu, FUNC30(FUNC0(F_SF),
		    FUNC0(F_OF)));
		break;
	case 0x9d:
		FUNC2(emu, FUNC30(FUNC0(F_SF),
		    FUNC0(F_OF)));
		break;
	case 0x9e:
		FUNC2(emu,
		    (FUNC30(FUNC0(F_SF), FUNC0(F_OF)) ||
		    FUNC0(F_ZF)));
		break;
	case 0x9f:
		FUNC2(emu,
		    !(FUNC30(FUNC0(F_SF), FUNC0(F_OF)) ||
		    FUNC0(F_ZF)));
		break;

	case 0xa0:
		FUNC22(emu);
		break;
	case 0xa1:
		FUNC20(emu);
		break;
	case 0xa2:
		FUNC11(emu);
		break;
	case 0xa3:
		FUNC7(emu);
		break;
	case 0xa4:
		FUNC26(emu);
		break;
	case 0xa5:
		FUNC25(emu);
		break;
	case 0xa8:
		FUNC23(emu);
		break;
	case 0xa9:
		FUNC21(emu);
		break;
	case 0xab:
		FUNC10(emu);
		break;
	case 0xac:
		FUNC28(emu);
		break;
	case 0xad:
		FUNC27(emu);
		break;
	case 0xaf:
		FUNC12(emu);
		break;

	/* 0xb0 TODO: cmpxchg */
	/* 0xb1 TODO: cmpxchg */
	case 0xb2:
		FUNC15(emu);
		break;
	case 0xb3:
		FUNC9(emu);
		break;
	case 0xb4:
		FUNC13(emu);
		break;
	case 0xb5:
		FUNC14(emu);
		break;
	case 0xb6:
		FUNC18(emu);
		break;
	case 0xb7:
		FUNC19(emu);
		break;
	case 0xba:
		FUNC6(emu);
		break;
	case 0xbb:
		FUNC8(emu);
		break;
	case 0xbc:
		FUNC4(emu);
		break;
	case 0xbd:
		FUNC5(emu);
		break;
	case 0xbe:
		FUNC16(emu);
		break;
	case 0xbf:
		FUNC17(emu);
		break;

	/* 0xc0 TODO: xadd */
	/* 0xc1 TODO: xadd */
	/* 0xc8 TODO: bswap */
	/* 0xc9 TODO: bswap */
	/* 0xca TODO: bswap */
	/* 0xcb TODO: bswap */
	/* 0xcc TODO: bswap */
	/* 0xcd TODO: bswap */
	/* 0xce TODO: bswap */
	/* 0xcf TODO: bswap */

	default:
		FUNC29(emu);
		break;
	}
}