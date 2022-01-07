
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int dummy; } ;
struct s390_prologue_data {int gpr_size; int fpr_size; struct prologue_value back_chain; struct prologue_value* gpr; struct prologue_value* fpr; struct prologue_value* spill; } ;
struct gdbarch {int dummy; } ;
typedef int bfd_byte ;
typedef scalar_t__ CORE_ADDR ;


 size_t S390_F0_REGNUM ;
 size_t S390_FRAME_REGNUM ;
 int S390_MAX_INSTR_SIZE ;
 int S390_NUM_FPRS ;
 int S390_NUM_GPRS ;
 int S390_NUM_SPILL_SLOTS ;
 size_t S390_R0_REGNUM ;
 size_t S390_SP_REGNUM ;
 int compute_x_addr (struct prologue_value*,struct prologue_value*,int,unsigned int,unsigned int) ;
 int gdbarch_ptr_bit (struct gdbarch*) ;
 scalar_t__ is_ri (int *,int ,int ,unsigned int*,int*) ;
 scalar_t__ is_ril (int *,int ,int ,unsigned int*,int*) ;
 scalar_t__ is_rr (int *,int ,unsigned int*,unsigned int*) ;
 scalar_t__ is_rre (int *,int ,unsigned int*,unsigned int*) ;
 scalar_t__ is_rs (int *,int ,unsigned int*,unsigned int*,int*,unsigned int*) ;
 scalar_t__ is_rsy (int *,int ,int ,unsigned int*,unsigned int*,int*,unsigned int*) ;
 scalar_t__ is_rx (int *,int ,unsigned int*,int*,unsigned int*,unsigned int*) ;
 scalar_t__ is_rxy (int *,int ,int ,unsigned int*,int*,unsigned int*,unsigned int*) ;
 int op1_ag ;
 int op1_aghi ;
 int op1_ahi ;
 int op1_ay ;
 int op1_bras ;
 int op1_brasl ;
 int op1_brc ;
 int op1_brcl ;
 int op1_larl ;
 int op1_lay ;
 int op1_lg ;
 int op1_lghi ;
 int op1_lhi ;
 int op1_ly ;
 int op1_sg ;
 int op1_stg ;
 int op1_stmg ;
 int op1_stmy ;
 int op1_sty ;
 int op1_sy ;
 int op2_ag ;
 int op2_aghi ;
 int op2_ahi ;
 int op2_ay ;
 int op2_bras ;
 int op2_brasl ;
 int op2_brc ;
 int op2_brcl ;
 int op2_larl ;
 int op2_lay ;
 int op2_lg ;
 int op2_lghi ;
 int op2_lhi ;
 int op2_ly ;
 int op2_sg ;
 int op2_stg ;
 int op2_stmg ;
 int op2_stmy ;
 int op2_sty ;
 int op2_sy ;
 int op_a ;
 int op_agr ;
 int op_ar ;
 int op_bas ;
 int op_basr ;
 int op_bc ;
 int op_bcr ;
 int op_l ;
 int op_la ;
 int op_lgr ;
 int op_lr ;
 int op_ngr ;
 int op_nr ;
 int op_s ;
 int op_sgr ;
 int op_sr ;
 int op_st ;
 int op_std ;
 int op_stm ;
 int pv_add (struct prologue_value*,struct prologue_value*,struct prologue_value*) ;
 int pv_add_constant (struct prologue_value*,int) ;
 int pv_is_identical (struct prologue_value*,struct prologue_value*) ;
 int pv_is_register (struct prologue_value*,size_t,int ) ;
 int pv_logical_and (struct prologue_value*,struct prologue_value*,struct prologue_value*) ;
 int pv_set_to_constant (struct prologue_value*,scalar_t__) ;
 int pv_set_to_register (struct prologue_value*,size_t,int ) ;
 int pv_set_to_unknown (struct prologue_value*) ;
 int pv_subtract (struct prologue_value*,struct prologue_value*,struct prologue_value*) ;
 int s390_load (struct prologue_value*,int,struct prologue_value*,struct s390_prologue_data*) ;
 int s390_readinstruction (int *,scalar_t__) ;
 int s390_store (struct prologue_value*,int,struct prologue_value*,struct s390_prologue_data*) ;

__attribute__((used)) static CORE_ADDR
s390_analyze_prologue (struct gdbarch *gdbarch,
         CORE_ADDR start_pc,
         CORE_ADDR current_pc,
         struct s390_prologue_data *data)
{
  int word_size = gdbarch_ptr_bit (gdbarch) / 8;





  CORE_ADDR result = start_pc;


  CORE_ADDR pc;


  CORE_ADDR next_pc;


  {
    int i;




    data->gpr_size = word_size;
    data->fpr_size = 8;

    for (i = 0; i < S390_NUM_GPRS; i++)
      pv_set_to_register (&data->gpr[i], S390_R0_REGNUM + i, 0);

    for (i = 0; i < S390_NUM_FPRS; i++)
      pv_set_to_register (&data->fpr[i], S390_F0_REGNUM + i, 0);

    for (i = 0; i < S390_NUM_SPILL_SLOTS; i++)
      pv_set_to_unknown (&data->spill[i]);

    pv_set_to_unknown (&data->back_chain);
  }



  for (pc = start_pc; pc > 0 && pc < current_pc; pc = next_pc)
    {
      bfd_byte insn[S390_MAX_INSTR_SIZE];
      int insn_len = s390_readinstruction (insn, pc);


      unsigned int b2, r1, r2, x2, r3;
      int i2, d2;



      struct prologue_value pre_insn_sp, pre_insn_fp, pre_insn_back_chain;


      if (insn_len < 0)
        {
          result = 0;
          break;
        }

      next_pc = pc + insn_len;

      pre_insn_sp = data->gpr[S390_SP_REGNUM - S390_R0_REGNUM];
      pre_insn_fp = data->gpr[S390_FRAME_REGNUM - S390_R0_REGNUM];
      pre_insn_back_chain = data->back_chain;


      if (word_size == 4
   && is_ri (insn, op1_lhi, op2_lhi, &r1, &i2))
        pv_set_to_constant (&data->gpr[r1], i2);


      else if (word_size == 8
        && is_ri (insn, op1_lghi, op2_lghi, &r1, &i2))
        pv_set_to_constant (&data->gpr[r1], i2);


      else if (word_size == 4
        && is_rr (insn, op_lr, &r1, &r2))
        data->gpr[r1] = data->gpr[r2];


      else if (word_size == 8
               && is_rre (insn, op_lgr, &r1, &r2))
        data->gpr[r1] = data->gpr[r2];


      else if (word_size == 4
        && is_rx (insn, op_l, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 4, &data->gpr[r1], data);
        }


      else if (word_size == 4
        && is_rxy (insn, op1_ly, op2_ly, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 4, &data->gpr[r1], data);
        }


      else if (word_size == 8
        && is_rxy (insn, op1_lg, op2_lg, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 8, &data->gpr[r1], data);
        }


      else if (word_size == 4
        && is_rx (insn, op_st, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_store (&addr, 4, &data->gpr[r1], data);
        }


      else if (word_size == 4
        && is_rxy (insn, op1_sty, op2_sty, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_store (&addr, 4, &data->gpr[r1], data);
        }


      else if (word_size == 8
        && is_rxy (insn, op1_stg, op2_stg, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_store (&addr, 8, &data->gpr[r1], data);
        }


      else if (is_rx (insn, op_std, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
          s390_store (&addr, 8, &data->fpr[r1], data);
        }


      else if (word_size == 4
        && is_rs (insn, op_stm, &r1, &r3, &d2, &b2))
        {
          int regnum;
          int offset;
          struct prologue_value addr;

          for (regnum = r1, offset = 0;
               regnum <= r3;
               regnum++, offset += 4)
            {
              compute_x_addr (&addr, data->gpr, d2 + offset, 0, b2);
              s390_store (&addr, 4, &data->gpr[regnum], data);
            }
        }


      else if (word_size == 4
        && is_rsy (insn, op1_stmy, op2_stmy, &r1, &r3, &d2, &b2))
        {
          int regnum;
          int offset;
          struct prologue_value addr;

          for (regnum = r1, offset = 0;
               regnum <= r3;
               regnum++, offset += 4)
            {
              compute_x_addr (&addr, data->gpr, d2 + offset, 0, b2);
              s390_store (&addr, 4, &data->gpr[regnum], data);
            }
        }


      else if (word_size == 8
        && is_rsy (insn, op1_stmg, op2_stmg, &r1, &r3, &d2, &b2))
        {
          int regnum;
          int offset;
          struct prologue_value addr;

          for (regnum = r1, offset = 0;
               regnum <= r3;
               regnum++, offset += 8)
            {
              compute_x_addr (&addr, data->gpr, d2 + offset, 0, b2);
              s390_store (&addr, 8, &data->gpr[regnum], data);
            }
        }


      else if (word_size == 4
        && is_ri (insn, op1_ahi, op2_ahi, &r1, &i2))
        pv_add_constant (&data->gpr[r1], i2);


      else if (word_size == 8
               && is_ri (insn, op1_aghi, op2_aghi, &r1, &i2))
        pv_add_constant (&data->gpr[r1], i2);


      else if (word_size == 4
        && is_rr (insn, op_ar, &r1, &r2))
        pv_add (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);


      else if (word_size == 8
        && is_rre (insn, op_agr, &r1, &r2))
        pv_add (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);


      else if (word_size == 4
        && is_rx (insn, op_a, &r1, &d2, &x2, &b2))
 {
          struct prologue_value addr;
          struct prologue_value value;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 4, &value, data);

   pv_add (&data->gpr[r1], &data->gpr[r1], &value);
 }


      else if (word_size == 4
        && is_rxy (insn, op1_ay, op2_ay, &r1, &d2, &x2, &b2))
 {
          struct prologue_value addr;
          struct prologue_value value;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 4, &value, data);

   pv_add (&data->gpr[r1], &data->gpr[r1], &value);
 }


      else if (word_size == 8
        && is_rxy (insn, op1_ag, op2_ag, &r1, &d2, &x2, &b2))
 {
          struct prologue_value addr;
          struct prologue_value value;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 8, &value, data);

   pv_add (&data->gpr[r1], &data->gpr[r1], &value);
 }


      else if (word_size == 4
        && is_rr (insn, op_sr, &r1, &r2))
        pv_subtract (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);


      else if (word_size == 8
        && is_rre (insn, op_sgr, &r1, &r2))
        pv_subtract (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);


      else if (word_size == 4
        && is_rx (insn, op_s, &r1, &d2, &x2, &b2))
 {
          struct prologue_value addr;
          struct prologue_value value;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 4, &value, data);

   pv_subtract (&data->gpr[r1], &data->gpr[r1], &value);
 }


      else if (word_size == 4
        && is_rxy (insn, op1_sy, op2_sy, &r1, &d2, &x2, &b2))
 {
          struct prologue_value addr;
          struct prologue_value value;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 4, &value, data);

   pv_subtract (&data->gpr[r1], &data->gpr[r1], &value);
 }


      else if (word_size == 8
        && is_rxy (insn, op1_sg, op2_sg, &r1, &d2, &x2, &b2))
 {
          struct prologue_value addr;
          struct prologue_value value;

          compute_x_addr (&addr, data->gpr, d2, x2, b2);
   s390_load (&addr, 8, &value, data);

   pv_subtract (&data->gpr[r1], &data->gpr[r1], &value);
 }


      else if (word_size == 4
        && is_rr (insn, op_nr, &r1, &r2))
        pv_logical_and (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);


      else if (word_size == 8
               && is_rre (insn, op_ngr, &r1, &r2))
        pv_logical_and (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);


      else if (is_rx (insn, op_la, &r1, &d2, &x2, &b2))
        compute_x_addr (&data->gpr[r1], data->gpr, d2, x2, b2);


      else if (is_rxy (insn, op1_lay, op2_lay, &r1, &d2, &x2, &b2))
        compute_x_addr (&data->gpr[r1], data->gpr, d2, x2, b2);


      else if (is_ril (insn, op1_larl, op2_larl, &r1, &i2))
        pv_set_to_constant (&data->gpr[r1], pc + i2 * 2);



      else if (is_rr (insn, op_basr, &r1, &r2)
               && r2 == 0)
        pv_set_to_constant (&data->gpr[r1], next_pc);


      else if (is_ri (insn, op1_bras, op2_bras, &r1, &i2))
        {
          pv_set_to_constant (&data->gpr[r1], next_pc);
          next_pc = pc + i2 * 2;



          if (next_pc <= pc)
            break;
        }


      else if (is_rr (insn, op_basr, &r1, &r2)
        || is_rx (insn, op_bas, &r1, &d2, &x2, &b2)
        || is_rr (insn, op_bcr, &r1, &r2)
        || is_rx (insn, op_bc, &r1, &d2, &x2, &b2)
        || is_ri (insn, op1_brc, op2_brc, &r1, &i2)
        || is_ril (insn, op1_brcl, op2_brcl, &r1, &i2)
        || is_ril (insn, op1_brasl, op2_brasl, &r2, &i2))
 break;

      else






        ;






      {
        struct prologue_value *sp = &data->gpr[S390_SP_REGNUM - S390_R0_REGNUM];
        struct prologue_value *fp = &data->gpr[S390_FRAME_REGNUM - S390_R0_REGNUM];

        if ((! pv_is_identical (&pre_insn_sp, sp)
             && ! pv_is_register (sp, S390_SP_REGNUM, 0))
            || (! pv_is_identical (&pre_insn_fp, fp)
                && ! pv_is_register (fp, S390_FRAME_REGNUM, 0))
            || ! pv_is_identical (&pre_insn_back_chain, &data->back_chain))
          result = next_pc;
      }
    }

  return result;
}
