
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct x86emu {int dummy; } ;


 int ACCESS_FLAG (int ) ;
 int F_CF ;
 int F_OF ;
 int F_PF ;
 int F_SF ;
 int F_ZF ;
 int common_jmp_long (struct x86emu*,int) ;
 int common_set_byte (struct x86emu*,int) ;
 int fetch_byte_imm (struct x86emu*) ;
 int x86emuOp2_bsf (struct x86emu*) ;
 int x86emuOp2_bsr (struct x86emu*) ;
 int x86emuOp2_btX_I (struct x86emu*) ;
 int x86emuOp2_bt_R (struct x86emu*) ;
 int x86emuOp2_btc_R (struct x86emu*) ;
 int x86emuOp2_btr_R (struct x86emu*) ;
 int x86emuOp2_bts_R (struct x86emu*) ;
 int x86emuOp2_cpuid (struct x86emu*) ;
 int x86emuOp2_imul_R_RM (struct x86emu*) ;
 int x86emuOp2_lfs_R_IMM (struct x86emu*) ;
 int x86emuOp2_lgs_R_IMM (struct x86emu*) ;
 int x86emuOp2_lss_R_IMM (struct x86emu*) ;
 int x86emuOp2_movsx_byte_R_RM (struct x86emu*) ;
 int x86emuOp2_movsx_word_R_RM (struct x86emu*) ;
 int x86emuOp2_movzx_byte_R_RM (struct x86emu*) ;
 int x86emuOp2_movzx_word_R_RM (struct x86emu*) ;
 int x86emuOp2_pop_FS (struct x86emu*) ;
 int x86emuOp2_pop_GS (struct x86emu*) ;
 int x86emuOp2_push_FS (struct x86emu*) ;
 int x86emuOp2_push_GS (struct x86emu*) ;
 int x86emuOp2_rdtsc (struct x86emu*) ;
 int x86emuOp2_shld_CL (struct x86emu*) ;
 int x86emuOp2_shld_IMM (struct x86emu*) ;
 int x86emuOp2_shrd_CL (struct x86emu*) ;
 int x86emuOp2_shrd_IMM (struct x86emu*) ;
 int x86emu_halt_sys (struct x86emu*) ;
 int xorl (int,int) ;

__attribute__((used)) static void
x86emu_exec_two_byte(struct x86emu * emu)
{
 uint8_t op2;

 op2 = fetch_byte_imm(emu);

 switch (op2) {
 case 0x31:
  x86emuOp2_rdtsc(emu);
  break;

 case 0x80:
  common_jmp_long(emu, ACCESS_FLAG(F_OF));
  break;
 case 0x81:
  common_jmp_long(emu, !ACCESS_FLAG(F_OF));
  break;
 case 0x82:
  common_jmp_long(emu, ACCESS_FLAG(F_CF));
  break;
 case 0x83:
  common_jmp_long(emu, !ACCESS_FLAG(F_CF));
  break;
 case 0x84:
  common_jmp_long(emu, ACCESS_FLAG(F_ZF));
  break;
 case 0x85:
  common_jmp_long(emu, !ACCESS_FLAG(F_ZF));
  break;
 case 0x86:
  common_jmp_long(emu, ACCESS_FLAG(F_CF) || ACCESS_FLAG(F_ZF));
  break;
 case 0x87:
  common_jmp_long(emu, !(ACCESS_FLAG(F_CF) || ACCESS_FLAG(F_ZF)));
  break;
 case 0x88:
  common_jmp_long(emu, ACCESS_FLAG(F_SF));
  break;
 case 0x89:
  common_jmp_long(emu, !ACCESS_FLAG(F_SF));
  break;
 case 0x8a:
  common_jmp_long(emu, ACCESS_FLAG(F_PF));
  break;
 case 0x8b:
  common_jmp_long(emu, !ACCESS_FLAG(F_PF));
  break;
 case 0x8c:
  common_jmp_long(emu, xorl(ACCESS_FLAG(F_SF),
      ACCESS_FLAG(F_OF)));
  break;
 case 0x8d:
  common_jmp_long(emu, !(xorl(ACCESS_FLAG(F_SF),
      ACCESS_FLAG(F_OF))));
  break;
 case 0x8e:
  common_jmp_long(emu, (xorl(ACCESS_FLAG(F_SF), ACCESS_FLAG(F_OF))
      || ACCESS_FLAG(F_ZF)));
  break;
 case 0x8f:
  common_jmp_long(emu,
      !(xorl(ACCESS_FLAG(F_SF), ACCESS_FLAG(F_OF)) ||
      ACCESS_FLAG(F_ZF)));
  break;

 case 0x90:
  common_set_byte(emu, ACCESS_FLAG(F_OF));
  break;
 case 0x91:
  common_set_byte(emu, !ACCESS_FLAG(F_OF));
  break;
 case 0x92:
  common_set_byte(emu, ACCESS_FLAG(F_CF));
  break;
 case 0x93:
  common_set_byte(emu, !ACCESS_FLAG(F_CF));
  break;
 case 0x94:
  common_set_byte(emu, ACCESS_FLAG(F_ZF));
  break;
 case 0x95:
  common_set_byte(emu, !ACCESS_FLAG(F_ZF));
  break;
 case 0x96:
  common_set_byte(emu, ACCESS_FLAG(F_CF) || ACCESS_FLAG(F_ZF));
  break;
 case 0x97:
  common_set_byte(emu, !(ACCESS_FLAG(F_CF) || ACCESS_FLAG(F_ZF)));
  break;
 case 0x98:
  common_set_byte(emu, ACCESS_FLAG(F_SF));
  break;
 case 0x99:
  common_set_byte(emu, !ACCESS_FLAG(F_SF));
  break;
 case 0x9a:
  common_set_byte(emu, ACCESS_FLAG(F_PF));
  break;
 case 0x9b:
  common_set_byte(emu, !ACCESS_FLAG(F_PF));
  break;
 case 0x9c:
  common_set_byte(emu, xorl(ACCESS_FLAG(F_SF),
      ACCESS_FLAG(F_OF)));
  break;
 case 0x9d:
  common_set_byte(emu, xorl(ACCESS_FLAG(F_SF),
      ACCESS_FLAG(F_OF)));
  break;
 case 0x9e:
  common_set_byte(emu,
      (xorl(ACCESS_FLAG(F_SF), ACCESS_FLAG(F_OF)) ||
      ACCESS_FLAG(F_ZF)));
  break;
 case 0x9f:
  common_set_byte(emu,
      !(xorl(ACCESS_FLAG(F_SF), ACCESS_FLAG(F_OF)) ||
      ACCESS_FLAG(F_ZF)));
  break;

 case 0xa0:
  x86emuOp2_push_FS(emu);
  break;
 case 0xa1:
  x86emuOp2_pop_FS(emu);
  break;
 case 0xa2:
  x86emuOp2_cpuid(emu);
  break;
 case 0xa3:
  x86emuOp2_bt_R(emu);
  break;
 case 0xa4:
  x86emuOp2_shld_IMM(emu);
  break;
 case 0xa5:
  x86emuOp2_shld_CL(emu);
  break;
 case 0xa8:
  x86emuOp2_push_GS(emu);
  break;
 case 0xa9:
  x86emuOp2_pop_GS(emu);
  break;
 case 0xab:
  x86emuOp2_bts_R(emu);
  break;
 case 0xac:
  x86emuOp2_shrd_IMM(emu);
  break;
 case 0xad:
  x86emuOp2_shrd_CL(emu);
  break;
 case 0xaf:
  x86emuOp2_imul_R_RM(emu);
  break;



 case 0xb2:
  x86emuOp2_lss_R_IMM(emu);
  break;
 case 0xb3:
  x86emuOp2_btr_R(emu);
  break;
 case 0xb4:
  x86emuOp2_lfs_R_IMM(emu);
  break;
 case 0xb5:
  x86emuOp2_lgs_R_IMM(emu);
  break;
 case 0xb6:
  x86emuOp2_movzx_byte_R_RM(emu);
  break;
 case 0xb7:
  x86emuOp2_movzx_word_R_RM(emu);
  break;
 case 0xba:
  x86emuOp2_btX_I(emu);
  break;
 case 0xbb:
  x86emuOp2_btc_R(emu);
  break;
 case 0xbc:
  x86emuOp2_bsf(emu);
  break;
 case 0xbd:
  x86emuOp2_bsr(emu);
  break;
 case 0xbe:
  x86emuOp2_movsx_byte_R_RM(emu);
  break;
 case 0xbf:
  x86emuOp2_movsx_word_R_RM(emu);
  break;
 default:
  x86emu_halt_sys(emu);
  break;
 }
}
