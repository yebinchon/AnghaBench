#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  mode; void* R_DS; void* R_ES; void* R_IP; void* R_BH; void* R_DH; void* R_CH; void* R_AH; void* R_BL; void* R_DL; void* R_CL; void* R_AL; int /*<<< orphan*/  register_di; int /*<<< orphan*/  register_si; int /*<<< orphan*/  register_bp; int /*<<< orphan*/  register_sp; int /*<<< orphan*/  register_b; int /*<<< orphan*/  register_d; int /*<<< orphan*/  register_c; int /*<<< orphan*/  register_a; int /*<<< orphan*/  R_AX; void* R_SS; void* R_CS; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_DF ; 
 int /*<<< orphan*/  F_IF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  F_PF ; 
 int /*<<< orphan*/  F_SF ; 
 int /*<<< orphan*/  F_ZF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSMODE_CLRMASK ; 
 int /*<<< orphan*/  SYSMODE_PREFIX_ADDR ; 
 int /*<<< orphan*/  SYSMODE_PREFIX_DATA ; 
 int /*<<< orphan*/  SYSMODE_PREFIX_REPE ; 
 int /*<<< orphan*/  SYSMODE_PREFIX_REPNE ; 
 int /*<<< orphan*/  SYSMODE_SEGOVR_CS ; 
 int /*<<< orphan*/  SYSMODE_SEGOVR_DS ; 
 int /*<<< orphan*/  SYSMODE_SEGOVR_ES ; 
 int /*<<< orphan*/  SYSMODE_SEGOVR_FS ; 
 int /*<<< orphan*/  SYSMODE_SEGOVR_GS ; 
 int /*<<< orphan*/  SYSMODE_SEGOVR_SS ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adc_byte ; 
 int /*<<< orphan*/  adc_long ; 
 int /*<<< orphan*/  adc_word ; 
 int /*<<< orphan*/  add_byte ; 
 int /*<<< orphan*/  add_long ; 
 int /*<<< orphan*/  add_word ; 
 int /*<<< orphan*/  and_byte ; 
 int /*<<< orphan*/  and_long ; 
 int /*<<< orphan*/  and_word ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*,void*,void*) ; 
 int /*<<< orphan*/  cmp_long_no_return ; 
 int /*<<< orphan*/  cmp_word_no_return ; 
 int /*<<< orphan*/  FUNC6 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct x86emu*,int /*<<< orphan*/  (*) (struct x86emu*,void*,void*)) ; 
 int /*<<< orphan*/  FUNC10 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct x86emu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct x86emu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct x86emu*,void**) ; 
 int /*<<< orphan*/  FUNC19 (struct x86emu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct x86emu*,int /*<<< orphan*/ *) ; 
 void* FUNC21 (struct x86emu*,void*) ; 
 void* FUNC22 (struct x86emu*,void*) ; 
 void* FUNC23 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC24 (struct x86emu*,int) ; 
 int /*<<< orphan*/  or_byte ; 
 int /*<<< orphan*/  or_long ; 
 int /*<<< orphan*/  or_word ; 
 int /*<<< orphan*/  FUNC25 (struct x86emu*,int) ; 
 void* FUNC26 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC27 (struct x86emu*,void*) ; 
 int /*<<< orphan*/  sbb_byte ; 
 int /*<<< orphan*/  sbb_long ; 
 int /*<<< orphan*/  sbb_word ; 
 int /*<<< orphan*/  sub_byte ; 
 int /*<<< orphan*/  sub_long ; 
 int /*<<< orphan*/  sub_word ; 
 int /*<<< orphan*/  FUNC28 (struct x86emu*,void*,void*) ; 
 int /*<<< orphan*/  test_long ; 
 int /*<<< orphan*/  test_word ; 
 int /*<<< orphan*/  FUNC29 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC30 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC31 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC32 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC33 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC34 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC35 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC36 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC37 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC38 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC39 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC40 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC41 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC42 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC43 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC44 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC45 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC46 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC47 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC48 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC49 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC50 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC51 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC52 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC53 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC54 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC55 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC56 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC57 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC58 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC59 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC60 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC61 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC62 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC63 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC64 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC65 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC66 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC67 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC68 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC69 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC70 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC71 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC72 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC73 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC74 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC75 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC76 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC77 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC78 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC79 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC80 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC81 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC82 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC83 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC84 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC85 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC86 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC87 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC88 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC89 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC90 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC91 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC92 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC93 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC94 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC95 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC96 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC97 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC98 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC99 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC100 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC101 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC102 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC103 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC104 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC105 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC106 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC107 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC108 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC109 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC110 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC111 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC112 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC113 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC114 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC115 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC116 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC117 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC118 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC119 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC120 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC121 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC122 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC123 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC124 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC125 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC126 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC127 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC128 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC129 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC130 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC131 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC132 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC133 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC134 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC135 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC136 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC137 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC138 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC139 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC140 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC141 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC142 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC143 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC144 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC145 (struct x86emu*) ; 
 int /*<<< orphan*/  xor_byte ; 
 int /*<<< orphan*/  xor_long ; 
 int /*<<< orphan*/  xor_word ; 

__attribute__((used)) static void
FUNC146(struct x86emu * emu)
{
	uint8_t op1;

	op1 = FUNC23(emu);

	switch (op1) {
	case 0x00:
		FUNC8(emu, add_byte);
		break;
	case 0x01:
		FUNC13(emu, add_word, add_long);
		break;
	case 0x02:
		FUNC7(emu, add_byte);
		break;
	case 0x03:
		FUNC12(emu, add_word, add_long);
		break;
	case 0x04:
		FUNC6(emu, add_byte);
		break;
	case 0x05:
		FUNC11(emu, add_word, add_long);
		break;
	case 0x06:
		FUNC27(emu, emu->x86.R_ES);
		break;
	case 0x07:
		emu->x86.R_ES = FUNC26(emu);
		break;

	case 0x08:
		FUNC8(emu, or_byte);
		break;
	case 0x09:
		FUNC13(emu, or_word, or_long);
		break;
	case 0x0a:
		FUNC7(emu, or_byte);
		break;
	case 0x0b:
		FUNC12(emu, or_word, or_long);
		break;
	case 0x0c:
		FUNC6(emu, or_byte);
		break;
	case 0x0d:
		FUNC11(emu, or_word, or_long);
		break;
	case 0x0e:
		FUNC27(emu, emu->x86.R_CS);
		break;
	case 0x0f:
		FUNC144(emu);
		break;

	case 0x10:
		FUNC8(emu, adc_byte);
		break;
	case 0x11:
		FUNC13(emu, adc_word, adc_long);
		break;
	case 0x12:
		FUNC7(emu, adc_byte);
		break;
	case 0x13:
		FUNC12(emu, adc_word, adc_long);
		break;
	case 0x14:
		FUNC6(emu, adc_byte);
		break;
	case 0x15:
		FUNC11(emu, adc_word, adc_long);
		break;
	case 0x16:
		FUNC27(emu, emu->x86.R_SS);
		break;
	case 0x17:
		emu->x86.R_SS = FUNC26(emu);
		break;

	case 0x18:
		FUNC8(emu, sbb_byte);
		break;
	case 0x19:
		FUNC13(emu, sbb_word, sbb_long);
		break;
	case 0x1a:
		FUNC7(emu, sbb_byte);
		break;
	case 0x1b:
		FUNC12(emu, sbb_word, sbb_long);
		break;
	case 0x1c:
		FUNC6(emu, sbb_byte);
		break;
	case 0x1d:
		FUNC11(emu, sbb_word, sbb_long);
		break;
	case 0x1e:
		FUNC27(emu, emu->x86.R_DS);
		break;
	case 0x1f:
		emu->x86.R_DS = FUNC26(emu);
		break;

	case 0x20:
		FUNC8(emu, and_byte);
		break;
	case 0x21:
		FUNC13(emu, and_word, and_long);
		break;
	case 0x22:
		FUNC7(emu, and_byte);
		break;
	case 0x23:
		FUNC12(emu, and_word, and_long);
		break;
	case 0x24:
		FUNC6(emu, and_byte);
		break;
	case 0x25:
		FUNC11(emu, and_word, and_long);
		break;
	case 0x26:
		emu->x86.mode |= SYSMODE_SEGOVR_ES;
		break;
	case 0x27:
		emu->x86.R_AL = FUNC21(emu, emu->x86.R_AL);
		break;

	case 0x28:
		FUNC8(emu, sub_byte);
		break;
	case 0x29:
		FUNC13(emu, sub_word, sub_long);
		break;
	case 0x2a:
		FUNC7(emu, sub_byte);
		break;
	case 0x2b:
		FUNC12(emu, sub_word, sub_long);
		break;
	case 0x2c:
		FUNC6(emu, sub_byte);
		break;
	case 0x2d:
		FUNC11(emu, sub_word, sub_long);
		break;
	case 0x2e:
		emu->x86.mode |= SYSMODE_SEGOVR_CS;
		break;
	case 0x2f:
		emu->x86.R_AL = FUNC22(emu, emu->x86.R_AL);
		break;

	case 0x30:
		FUNC8(emu, xor_byte);
		break;
	case 0x31:
		FUNC13(emu, xor_word, xor_long);
		break;
	case 0x32:
		FUNC7(emu, xor_byte);
		break;
	case 0x33:
		FUNC12(emu, xor_word, xor_long);
		break;
	case 0x34:
		FUNC6(emu, xor_byte);
		break;
	case 0x35:
		FUNC11(emu, xor_word, xor_long);
		break;
	case 0x36:
		emu->x86.mode |= SYSMODE_SEGOVR_SS;
		break;
	case 0x37:
		emu->x86.R_AX = FUNC3(emu, emu->x86.R_AX);
		break;

	case 0x38:
		FUNC9(emu, cmp_byte_no_return);
		break;
	case 0x39:
		FUNC10(emu, cmp_word_no_return,
		    cmp_long_no_return);
		break;
	case 0x3a:
		FUNC36(emu);
		break;
	case 0x3b:
		FUNC38(emu);
		break;
	case 0x3c:
		FUNC35(emu);
		break;
	case 0x3d:
		FUNC37(emu);
		break;
	case 0x3e:
		emu->x86.mode |= SYSMODE_SEGOVR_DS;
		break;
	case 0x3f:
		emu->x86.R_AX = FUNC4(emu, emu->x86.R_AX);
		break;

	case 0x40:
		FUNC16(emu, &emu->x86.register_a);
		break;
	case 0x41:
		FUNC16(emu, &emu->x86.register_c);
		break;
	case 0x42:
		FUNC16(emu, &emu->x86.register_d);
		break;
	case 0x43:
		FUNC16(emu, &emu->x86.register_b);
		break;
	case 0x44:
		FUNC16(emu, &emu->x86.register_sp);
		break;
	case 0x45:
		FUNC16(emu, &emu->x86.register_bp);
		break;
	case 0x46:
		FUNC16(emu, &emu->x86.register_si);
		break;
	case 0x47:
		FUNC16(emu, &emu->x86.register_di);
		break;

	case 0x48:
		FUNC14(emu, &emu->x86.register_a);
		break;
	case 0x49:
		FUNC14(emu, &emu->x86.register_c);
		break;
	case 0x4a:
		FUNC14(emu, &emu->x86.register_d);
		break;
	case 0x4b:
		FUNC14(emu, &emu->x86.register_b);
		break;
	case 0x4c:
		FUNC14(emu, &emu->x86.register_sp);
		break;
	case 0x4d:
		FUNC14(emu, &emu->x86.register_bp);
		break;
	case 0x4e:
		FUNC14(emu, &emu->x86.register_si);
		break;
	case 0x4f:
		FUNC14(emu, &emu->x86.register_di);
		break;

	case 0x50:
		FUNC20(emu, &emu->x86.register_a);
		break;
	case 0x51:
		FUNC20(emu, &emu->x86.register_c);
		break;
	case 0x52:
		FUNC20(emu, &emu->x86.register_d);
		break;
	case 0x53:
		FUNC20(emu, &emu->x86.register_b);
		break;
	case 0x54:
		FUNC20(emu, &emu->x86.register_sp);
		break;
	case 0x55:
		FUNC20(emu, &emu->x86.register_bp);
		break;
	case 0x56:
		FUNC20(emu, &emu->x86.register_si);
		break;
	case 0x57:
		FUNC20(emu, &emu->x86.register_di);
		break;

	case 0x58:
		FUNC19(emu, &emu->x86.register_a);
		break;
	case 0x59:
		FUNC19(emu, &emu->x86.register_c);
		break;
	case 0x5a:
		FUNC19(emu, &emu->x86.register_d);
		break;
	case 0x5b:
		FUNC19(emu, &emu->x86.register_b);
		break;
	case 0x5c:
		FUNC19(emu, &emu->x86.register_sp);
		break;
	case 0x5d:
		FUNC19(emu, &emu->x86.register_bp);
		break;
	case 0x5e:
		FUNC19(emu, &emu->x86.register_si);
		break;
	case 0x5f:
		FUNC19(emu, &emu->x86.register_di);
		break;

	case 0x60:
		FUNC121(emu);
		break;
	case 0x61:
		FUNC119(emu);
		break;
	/* 0x62 bound */
	/* 0x63 arpl */
	case 0x64:
		emu->x86.mode |= SYSMODE_SEGOVR_FS;
		break;
	case 0x65:
		emu->x86.mode |= SYSMODE_SEGOVR_GS;
		break;
	case 0x66:
		emu->x86.mode |= SYSMODE_PREFIX_DATA;
		break;
	case 0x67:
		emu->x86.mode |= SYSMODE_PREFIX_ADDR;
		break;

	case 0x68:
		FUNC123(emu);
		break;
	case 0x69:
		FUNC15(emu, 0);
		break;
	case 0x6a:
		FUNC122(emu);
		break;
	case 0x6b:
		FUNC15(emu, 1);
		break;
	case 0x6c:
		FUNC24(emu, 1);
		break;
	case 0x6d:
		FUNC55(emu);
		break;
	case 0x6e:
		FUNC25(emu, 1);
		break;
	case 0x6f:
		FUNC117(emu);
		break;

	case 0x70:
		FUNC17(emu, FUNC0(F_OF));
		break;
	case 0x71:
		FUNC17(emu, !FUNC0(F_OF));
		break;
	case 0x72:
		FUNC17(emu, FUNC0(F_CF));
		break;
	case 0x73:
		FUNC17(emu, !FUNC0(F_CF));
		break;
	case 0x74:
		FUNC17(emu, FUNC0(F_ZF));
		break;
	case 0x75:
		FUNC17(emu, !FUNC0(F_ZF));
		break;
	case 0x76:
		FUNC17(emu, FUNC0(F_CF) || FUNC0(F_ZF));
		break;
	case 0x77:
		FUNC17(emu, !FUNC0(F_CF) && !FUNC0(F_ZF));
		break;

	case 0x78:
		FUNC17(emu, FUNC0(F_SF));
		break;
	case 0x79:
		FUNC17(emu, !FUNC0(F_SF));
		break;
	case 0x7a:
		FUNC17(emu, FUNC0(F_PF));
		break;
	case 0x7b:
		FUNC17(emu, !FUNC0(F_PF));
		break;
	case 0x7c:
		FUNC64(emu);
		break;
	case 0x7d:
		FUNC66(emu);
		break;
	case 0x7e:
		FUNC65(emu);
		break;
	case 0x7f:
		FUNC67(emu);
		break;

	case 0x80:
		FUNC99(emu);
		break;
	case 0x81:
		FUNC100(emu);
		break;
	case 0x82:
		FUNC101(emu);
		break;
	case 0x83:
		FUNC102(emu);
		break;
	case 0x84:
		FUNC9(emu, test_byte);
		break;
	case 0x85:
		FUNC10(emu, test_word, test_long);
		break;
	case 0x86:
		FUNC134(emu);
		break;
	case 0x87:
		FUNC142(emu);
		break;

	case 0x88:
		FUNC82(emu);
		break;
	case 0x89:
		FUNC91(emu);
		break;
	case 0x8a:
		FUNC83(emu);
		break;
	case 0x8b:
		FUNC93(emu);
		break;
	case 0x8c:
		FUNC92(emu);
		break;
	case 0x8d:
		FUNC69(emu);
		break;
	case 0x8e:
		FUNC96(emu);
		break;
	case 0x8f:
		FUNC118(emu);
		break;

	case 0x90:
		/* nop */
		break;
	case 0x91:
		FUNC137(emu);
		break;
	case 0x92:
		FUNC139(emu);
		break;
	case 0x93:
		FUNC136(emu);
		break;
	case 0x94:
		FUNC141(emu);
		break;
	case 0x95:
		FUNC135(emu);
		break;
	case 0x96:
		FUNC140(emu);
		break;
	case 0x97:
		FUNC138(emu);
		break;

	case 0x98:
		FUNC33(emu);
		break;
	case 0x99:
		FUNC41(emu);
		break;
	case 0x9a:
		FUNC31(emu);
		break;
	case 0x9b:
		/* wait */
		break;
	case 0x9c:
		FUNC124(emu);
		break;
	case 0x9d:
		FUNC120(emu);
		break;
	case 0x9e:
		FUNC128(emu);
		break;
	case 0x9f:
		FUNC68(emu);
		break;

	case 0xa0:
		FUNC77(emu);
		break;
	case 0xa1:
		FUNC78(emu);
		break;
	case 0xa2:
		FUNC79(emu);
		break;
	case 0xa3:
		FUNC80(emu);
		break;
	case 0xa4:
		FUNC97(emu);
		break;
	case 0xa5:
		FUNC98(emu);
		break;
	case 0xa6:
		FUNC39(emu);
		break;
	case 0xa7:
		FUNC40(emu);
		break;

	case 0xa8:
		FUNC28(emu, emu->x86.R_AL, FUNC23(emu));
		break;
	case 0xa9:
		FUNC133(emu);
		break;
	case 0xaa:
		FUNC131(emu);
		break;
	case 0xab:
		FUNC132(emu);
		break;
	case 0xac:
		FUNC72(emu);
		break;
	case 0xad:
		FUNC73(emu);
		break;
	case 0xae:
		FUNC129(emu);
		break;
	case 0xaf:
		FUNC130(emu);
		break;

	case 0xb0:
		emu->x86.R_AL = FUNC23(emu);
		break;
	case 0xb1:
		emu->x86.R_CL = FUNC23(emu);
		break;
	case 0xb2:
		emu->x86.R_DL = FUNC23(emu);
		break;
	case 0xb3:
		emu->x86.R_BL = FUNC23(emu);
		break;
	case 0xb4:
		emu->x86.R_AH = FUNC23(emu);
		break;
	case 0xb5:
		emu->x86.R_CH = FUNC23(emu);
		break;
	case 0xb6:
		emu->x86.R_DH = FUNC23(emu);
		break;
	case 0xb7:
		emu->x86.R_BH = FUNC23(emu);
		break;

	case 0xb8:
		FUNC84(emu);
		break;
	case 0xb9:
		FUNC87(emu);
		break;
	case 0xba:
		FUNC89(emu);
		break;
	case 0xbb:
		FUNC86(emu);
		break;
	case 0xbc:

		FUNC95(emu);
		break;
	case 0xbd:
		FUNC85(emu);
		break;
	case 0xbe:
		FUNC94(emu);
		break;
	case 0xbf:
		FUNC88(emu);
		break;

	case 0xc0:
		FUNC103(emu);
		break;
	case 0xc1:
		FUNC104(emu);
		break;
	case 0xc2:
		FUNC127(emu);
		break;
	case 0xc3:
		emu->x86.R_IP = FUNC26(emu);
		break;
	case 0xc4:
		FUNC18(emu, &emu->x86.R_ES);
		break;
	case 0xc5:
		FUNC18(emu, &emu->x86.R_DS);
		break;
	case 0xc6:
		FUNC81(emu);
		break;
	case 0xc7:
		FUNC90(emu);
		break;
	case 0xc8:
		FUNC42(emu);
		break;
	case 0xc9:
		FUNC70(emu);
		break;
	case 0xca:
		FUNC126(emu);
		break;
	case 0xcb:
		FUNC125(emu);
		break;
	case 0xcc:
		FUNC56(emu);
		break;
	case 0xcd:
		FUNC57(emu);
		break;
	case 0xce:
		FUNC58(emu);
		break;
	case 0xcf:
		FUNC59(emu);
		break;

	case 0xd0:
		FUNC105(emu);
		break;
	case 0xd1:
		FUNC106(emu);
		break;
	case 0xd2:
		FUNC107(emu);
		break;
	case 0xd3:
		FUNC108(emu);
		break;
	case 0xd4:
		FUNC30(emu);
		break;
	case 0xd5:
		FUNC29(emu);
		break;
	/* 0xd6 Undocumented SETALC instruction */
	case 0xd7:
		FUNC143(emu);
		break;
	case 0xd8:
		FUNC43(emu);
		break;
	case 0xd9:
		FUNC44(emu);
		break;
	case 0xda:
		FUNC45(emu);
		break;
	case 0xdb:
		FUNC46(emu);
		break;
	case 0xdc:
		FUNC47(emu);
		break;
	case 0xdd:
		FUNC48(emu);
		break;
	case 0xde:
		FUNC49(emu);
		break;
	case 0xdf:
		FUNC50(emu);
		break;

	case 0xe0:
		FUNC76(emu);
		break;
	case 0xe1:
		FUNC75(emu);
		break;
	case 0xe2:
		FUNC74(emu);
		break;
	case 0xe3:
		FUNC60(emu);
		break;
	case 0xe4:
		FUNC52(emu);
		break;
	case 0xe5:
		FUNC54(emu);
		break;
	case 0xe6:
		FUNC114(emu);
		break;
	case 0xe7:
		FUNC116(emu);
		break;

	case 0xe8:
		FUNC32(emu);
		break;
	case 0xe9:
		FUNC63(emu);
		break;
	case 0xea:
		FUNC62(emu);
		break;
	case 0xeb:
		FUNC61(emu);
		break;
	case 0xec:
		FUNC51(emu);
		break;
	case 0xed:
		FUNC53(emu);
		break;
	case 0xee:
		FUNC113(emu);
		break;
	case 0xef:
		FUNC115(emu);
		break;

	case 0xf0:
		FUNC71(emu);
		break;
	case 0xf2:
		emu->x86.mode |= SYSMODE_PREFIX_REPNE;
		break;
	case 0xf3:
		emu->x86.mode |= SYSMODE_PREFIX_REPE;
		break;
	case 0xf4:
		FUNC145(emu);
		break;
	case 0xf5:
		FUNC34(emu);
		break;
	case 0xf6:
		FUNC109(emu);
		break;
	case 0xf7:
		FUNC110(emu);
		break;

	case 0xf8:
		FUNC1(F_CF);
		break;
	case 0xf9:
		FUNC2(F_CF);
		break;
	case 0xfa:
		FUNC1(F_IF);
		break;
	case 0xfb:
		FUNC2(F_IF);
		break;
	case 0xfc:
		FUNC1(F_DF);
		break;
	case 0xfd:
		FUNC2(F_DF);
		break;
	case 0xfe:
		FUNC111(emu);
		break;
	case 0xff:
		FUNC112(emu);
		break;
	default:
		FUNC145(emu);
		break;
	}
	if (op1 != 0x26 && op1 != 0x2e && op1 != 0x36 && op1 != 0x3e &&
	    (op1 | 3) != 0x67)
		emu->x86.mode &= ~SYSMODE_CLRMASK;
}