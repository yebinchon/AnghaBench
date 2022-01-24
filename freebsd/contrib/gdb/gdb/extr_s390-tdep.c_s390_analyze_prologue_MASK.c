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
struct prologue_value {int dummy; } ;
struct s390_prologue_data {int gpr_size; int fpr_size; struct prologue_value back_chain; struct prologue_value* gpr; struct prologue_value* fpr; struct prologue_value* spill; } ;
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 size_t S390_F0_REGNUM ; 
 size_t S390_FRAME_REGNUM ; 
 int S390_MAX_INSTR_SIZE ; 
 int S390_NUM_FPRS ; 
 int S390_NUM_GPRS ; 
 int S390_NUM_SPILL_SLOTS ; 
 size_t S390_R0_REGNUM ; 
 size_t S390_SP_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (struct prologue_value*,struct prologue_value*,int,unsigned int,unsigned int) ; 
 int FUNC1 (struct gdbarch*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,unsigned int*,int*,unsigned int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*,int*,unsigned int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  op1_ag ; 
 int /*<<< orphan*/  op1_aghi ; 
 int /*<<< orphan*/  op1_ahi ; 
 int /*<<< orphan*/  op1_ay ; 
 int /*<<< orphan*/  op1_bras ; 
 int /*<<< orphan*/  op1_brasl ; 
 int /*<<< orphan*/  op1_brc ; 
 int /*<<< orphan*/  op1_brcl ; 
 int /*<<< orphan*/  op1_larl ; 
 int /*<<< orphan*/  op1_lay ; 
 int /*<<< orphan*/  op1_lg ; 
 int /*<<< orphan*/  op1_lghi ; 
 int /*<<< orphan*/  op1_lhi ; 
 int /*<<< orphan*/  op1_ly ; 
 int /*<<< orphan*/  op1_sg ; 
 int /*<<< orphan*/  op1_stg ; 
 int /*<<< orphan*/  op1_stmg ; 
 int /*<<< orphan*/  op1_stmy ; 
 int /*<<< orphan*/  op1_sty ; 
 int /*<<< orphan*/  op1_sy ; 
 int /*<<< orphan*/  op2_ag ; 
 int /*<<< orphan*/  op2_aghi ; 
 int /*<<< orphan*/  op2_ahi ; 
 int /*<<< orphan*/  op2_ay ; 
 int /*<<< orphan*/  op2_bras ; 
 int /*<<< orphan*/  op2_brasl ; 
 int /*<<< orphan*/  op2_brc ; 
 int /*<<< orphan*/  op2_brcl ; 
 int /*<<< orphan*/  op2_larl ; 
 int /*<<< orphan*/  op2_lay ; 
 int /*<<< orphan*/  op2_lg ; 
 int /*<<< orphan*/  op2_lghi ; 
 int /*<<< orphan*/  op2_lhi ; 
 int /*<<< orphan*/  op2_ly ; 
 int /*<<< orphan*/  op2_sg ; 
 int /*<<< orphan*/  op2_stg ; 
 int /*<<< orphan*/  op2_stmg ; 
 int /*<<< orphan*/  op2_stmy ; 
 int /*<<< orphan*/  op2_sty ; 
 int /*<<< orphan*/  op2_sy ; 
 int /*<<< orphan*/  op_a ; 
 int /*<<< orphan*/  op_agr ; 
 int /*<<< orphan*/  op_ar ; 
 int /*<<< orphan*/  op_bas ; 
 int /*<<< orphan*/  op_basr ; 
 int /*<<< orphan*/  op_bc ; 
 int /*<<< orphan*/  op_bcr ; 
 int /*<<< orphan*/  op_l ; 
 int /*<<< orphan*/  op_la ; 
 int /*<<< orphan*/  op_lgr ; 
 int /*<<< orphan*/  op_lr ; 
 int /*<<< orphan*/  op_ngr ; 
 int /*<<< orphan*/  op_nr ; 
 int /*<<< orphan*/  op_s ; 
 int /*<<< orphan*/  op_sgr ; 
 int /*<<< orphan*/  op_sr ; 
 int /*<<< orphan*/  op_st ; 
 int /*<<< orphan*/  op_std ; 
 int /*<<< orphan*/  op_stm ; 
 int /*<<< orphan*/  FUNC10 (struct prologue_value*,struct prologue_value*,struct prologue_value*) ; 
 int /*<<< orphan*/  FUNC11 (struct prologue_value*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct prologue_value*,struct prologue_value*) ; 
 int /*<<< orphan*/  FUNC13 (struct prologue_value*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct prologue_value*,struct prologue_value*,struct prologue_value*) ; 
 int /*<<< orphan*/  FUNC15 (struct prologue_value*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct prologue_value*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct prologue_value*) ; 
 int /*<<< orphan*/  FUNC18 (struct prologue_value*,struct prologue_value*,struct prologue_value*) ; 
 int /*<<< orphan*/  FUNC19 (struct prologue_value*,int,struct prologue_value*,struct s390_prologue_data*) ; 
 int FUNC20 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct prologue_value*,int,struct prologue_value*,struct s390_prologue_data*) ; 

__attribute__((used)) static CORE_ADDR
FUNC22 (struct gdbarch *gdbarch,
		       CORE_ADDR start_pc,
		       CORE_ADDR current_pc,
		       struct s390_prologue_data *data)
{
  int word_size = FUNC1 (gdbarch) / 8;

  /* Our return value:
     The address of the instruction after the last one that changed
     the SP, FP, or back chain;  zero if we got an error trying to 
     read memory.  */
  CORE_ADDR result = start_pc;

  /* The current PC for our abstract interpretation.  */
  CORE_ADDR pc;

  /* The address of the next instruction after that.  */
  CORE_ADDR next_pc;
  
  /* Set up everything's initial value.  */
  {
    int i;

    /* For the purpose of prologue tracking, we consider the GPR size to
       be equal to the ABI word size, even if it is actually larger
       (i.e. when running a 32-bit binary under a 64-bit kernel).  */
    data->gpr_size = word_size;
    data->fpr_size = 8;

    for (i = 0; i < S390_NUM_GPRS; i++)
      FUNC16 (&data->gpr[i], S390_R0_REGNUM + i, 0);

    for (i = 0; i < S390_NUM_FPRS; i++)
      FUNC16 (&data->fpr[i], S390_F0_REGNUM + i, 0);

    for (i = 0; i < S390_NUM_SPILL_SLOTS; i++)
      FUNC17 (&data->spill[i]);

    FUNC17 (&data->back_chain);
  }

  /* Start interpreting instructions, until we hit the frame's
     current PC or the first branch instruction.  */
  for (pc = start_pc; pc > 0 && pc < current_pc; pc = next_pc)
    {
      bfd_byte insn[S390_MAX_INSTR_SIZE];
      int insn_len = FUNC20 (insn, pc);

      /* Fields for various kinds of instructions.  */
      unsigned int b2, r1, r2, x2, r3;
      int i2, d2;

      /* The values of SP, FP, and back chain before this instruction,
         for detecting instructions that change them.  */
      struct prologue_value pre_insn_sp, pre_insn_fp, pre_insn_back_chain;

      /* If we got an error trying to read the instruction, report it.  */
      if (insn_len < 0)
        {
          result = 0;
          break;
        }

      next_pc = pc + insn_len;

      pre_insn_sp = data->gpr[S390_SP_REGNUM - S390_R0_REGNUM];
      pre_insn_fp = data->gpr[S390_FRAME_REGNUM - S390_R0_REGNUM];
      pre_insn_back_chain = data->back_chain;

      /* LHI r1, i2 --- load halfword immediate */
      if (word_size == 4
	  && FUNC2 (insn, op1_lhi, op2_lhi, &r1, &i2))
        FUNC15 (&data->gpr[r1], i2);

      /* LGHI r1, i2 --- load halfword immediate (64-bit version) */
      else if (word_size == 8
	       && FUNC2 (insn, op1_lghi, op2_lghi, &r1, &i2))
        FUNC15 (&data->gpr[r1], i2);

      /* LR r1, r2 --- load from register */
      else if (word_size == 4
	       && FUNC4 (insn, op_lr, &r1, &r2))
        data->gpr[r1] = data->gpr[r2];

      /* LGR r1, r2 --- load from register (64-bit version) */
      else if (word_size == 8
               && FUNC5 (insn, op_lgr, &r1, &r2))
        data->gpr[r1] = data->gpr[r2];

      /* L r1, d2(x2, b2) --- load */
      else if (word_size == 4
	       && FUNC8 (insn, op_l, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 4, &data->gpr[r1], data);
        }

      /* LY r1, d2(x2, b2) --- load (long-displacement version) */
      else if (word_size == 4
	       && FUNC9 (insn, op1_ly, op2_ly, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 4, &data->gpr[r1], data);
        }

      /* LG r1, d2(x2, b2) --- load (64-bit version) */
      else if (word_size == 8
	       && FUNC9 (insn, op1_lg, op2_lg, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 8, &data->gpr[r1], data);
        }

      /* ST r1, d2(x2, b2) --- store */
      else if (word_size == 4
	       && FUNC8 (insn, op_st, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC21 (&addr, 4, &data->gpr[r1], data);
        }

      /* STY r1, d2(x2, b2) --- store (long-displacement version) */
      else if (word_size == 4
	       && FUNC9 (insn, op1_sty, op2_sty, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC21 (&addr, 4, &data->gpr[r1], data);
        }

      /* STG r1, d2(x2, b2) --- store (64-bit version) */
      else if (word_size == 8
	       && FUNC9 (insn, op1_stg, op2_stg, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC21 (&addr, 8, &data->gpr[r1], data);
        }

      /* STD r1, d2(x2,b2) --- store floating-point register  */
      else if (FUNC8 (insn, op_std, &r1, &d2, &x2, &b2))
        {
          struct prologue_value addr;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
          FUNC21 (&addr, 8, &data->fpr[r1], data);
        }

      /* STM r1, r3, d2(b2) --- store multiple */
      else if (word_size == 4
	       && FUNC6 (insn, op_stm, &r1, &r3, &d2, &b2))
        {
          int regnum;
          int offset;
          struct prologue_value addr;

          for (regnum = r1, offset = 0;
               regnum <= r3;
               regnum++, offset += 4)
            {
              FUNC0 (&addr, data->gpr, d2 + offset, 0, b2);
              FUNC21 (&addr, 4, &data->gpr[regnum], data);
            }
        }

      /* STMY r1, r3, d2(b2) --- store multiple (long-displacement version) */
      else if (word_size == 4
	       && FUNC7 (insn, op1_stmy, op2_stmy, &r1, &r3, &d2, &b2))
        {
          int regnum;
          int offset;
          struct prologue_value addr;

          for (regnum = r1, offset = 0;
               regnum <= r3;
               regnum++, offset += 4)
            {
              FUNC0 (&addr, data->gpr, d2 + offset, 0, b2);
              FUNC21 (&addr, 4, &data->gpr[regnum], data);
            }
        }

      /* STMG r1, r3, d2(b2) --- store multiple (64-bit version) */
      else if (word_size == 8
	       && FUNC7 (insn, op1_stmg, op2_stmg, &r1, &r3, &d2, &b2))
        {
          int regnum;
          int offset;
          struct prologue_value addr;

          for (regnum = r1, offset = 0;
               regnum <= r3;
               regnum++, offset += 8)
            {
              FUNC0 (&addr, data->gpr, d2 + offset, 0, b2);
              FUNC21 (&addr, 8, &data->gpr[regnum], data);
            }
        }

      /* AHI r1, i2 --- add halfword immediate */
      else if (word_size == 4
	       && FUNC2 (insn, op1_ahi, op2_ahi, &r1, &i2))
        FUNC11 (&data->gpr[r1], i2);

      /* AGHI r1, i2 --- add halfword immediate (64-bit version) */
      else if (word_size == 8
               && FUNC2 (insn, op1_aghi, op2_aghi, &r1, &i2))
        FUNC11 (&data->gpr[r1], i2);

      /* AR r1, r2 -- add register */
      else if (word_size == 4
	       && FUNC4 (insn, op_ar, &r1, &r2))
        FUNC10 (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);

      /* AGR r1, r2 -- add register (64-bit version) */
      else if (word_size == 8
	       && FUNC5 (insn, op_agr, &r1, &r2))
        FUNC10 (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);

      /* A r1, d2(x2, b2) -- add */
      else if (word_size == 4
	       && FUNC8 (insn, op_a, &r1, &d2, &x2, &b2))
	{
          struct prologue_value addr;
          struct prologue_value value;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 4, &value, data);
	
	  FUNC10 (&data->gpr[r1], &data->gpr[r1], &value);
	}

      /* AY r1, d2(x2, b2) -- add (long-displacement version) */
      else if (word_size == 4
	       && FUNC9 (insn, op1_ay, op2_ay, &r1, &d2, &x2, &b2))
	{
          struct prologue_value addr;
          struct prologue_value value;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 4, &value, data);
	
	  FUNC10 (&data->gpr[r1], &data->gpr[r1], &value);
	}

      /* AG r1, d2(x2, b2) -- add (64-bit version) */
      else if (word_size == 8
	       && FUNC9 (insn, op1_ag, op2_ag, &r1, &d2, &x2, &b2))
	{
          struct prologue_value addr;
          struct prologue_value value;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 8, &value, data);
	
	  FUNC10 (&data->gpr[r1], &data->gpr[r1], &value);
	}

      /* SR r1, r2 -- subtract register */
      else if (word_size == 4
	       && FUNC4 (insn, op_sr, &r1, &r2))
        FUNC18 (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);

      /* SGR r1, r2 -- subtract register (64-bit version) */
      else if (word_size == 8
	       && FUNC5 (insn, op_sgr, &r1, &r2))
        FUNC18 (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);

      /* S r1, d2(x2, b2) -- subtract */
      else if (word_size == 4
	       && FUNC8 (insn, op_s, &r1, &d2, &x2, &b2))
	{
          struct prologue_value addr;
          struct prologue_value value;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 4, &value, data);
	
	  FUNC18 (&data->gpr[r1], &data->gpr[r1], &value);
	}

      /* SY r1, d2(x2, b2) -- subtract (long-displacement version) */
      else if (word_size == 4
	       && FUNC9 (insn, op1_sy, op2_sy, &r1, &d2, &x2, &b2))
	{
          struct prologue_value addr;
          struct prologue_value value;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 4, &value, data);
	
	  FUNC18 (&data->gpr[r1], &data->gpr[r1], &value);
	}

      /* SG r1, d2(x2, b2) -- subtract (64-bit version) */
      else if (word_size == 8
	       && FUNC9 (insn, op1_sg, op2_sg, &r1, &d2, &x2, &b2))
	{
          struct prologue_value addr;
          struct prologue_value value;

          FUNC0 (&addr, data->gpr, d2, x2, b2);
	  FUNC19 (&addr, 8, &value, data);
	
	  FUNC18 (&data->gpr[r1], &data->gpr[r1], &value);
	}

      /* NR r1, r2 --- logical and */
      else if (word_size == 4
	       && FUNC4 (insn, op_nr, &r1, &r2))
        FUNC14 (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);

      /* NGR r1, r2 >--- logical and (64-bit version) */
      else if (word_size == 8
               && FUNC5 (insn, op_ngr, &r1, &r2))
        FUNC14 (&data->gpr[r1], &data->gpr[r1], &data->gpr[r2]);

      /* LA r1, d2(x2, b2) --- load address */
      else if (FUNC8 (insn, op_la, &r1, &d2, &x2, &b2))
        FUNC0 (&data->gpr[r1], data->gpr, d2, x2, b2);

      /* LAY r1, d2(x2, b2) --- load address (long-displacement version) */
      else if (FUNC9 (insn, op1_lay, op2_lay, &r1, &d2, &x2, &b2))
        FUNC0 (&data->gpr[r1], data->gpr, d2, x2, b2);

      /* LARL r1, i2 --- load address relative long */
      else if (FUNC3 (insn, op1_larl, op2_larl, &r1, &i2))
        FUNC15 (&data->gpr[r1], pc + i2 * 2);

      /* BASR r1, 0 --- branch and save
         Since r2 is zero, this saves the PC in r1, but doesn't branch.  */
      else if (FUNC4 (insn, op_basr, &r1, &r2)
               && r2 == 0)
        FUNC15 (&data->gpr[r1], next_pc);

      /* BRAS r1, i2 --- branch relative and save */
      else if (FUNC2 (insn, op1_bras, op2_bras, &r1, &i2))
        {
          FUNC15 (&data->gpr[r1], next_pc);
          next_pc = pc + i2 * 2;

          /* We'd better not interpret any backward branches.  We'll
             never terminate.  */
          if (next_pc <= pc)
            break;
        }

      /* Terminate search when hitting any other branch instruction.  */
      else if (FUNC4 (insn, op_basr, &r1, &r2)
	       || FUNC8 (insn, op_bas, &r1, &d2, &x2, &b2)
	       || FUNC4 (insn, op_bcr, &r1, &r2)
	       || FUNC8 (insn, op_bc, &r1, &d2, &x2, &b2)
	       || FUNC2 (insn, op1_brc, op2_brc, &r1, &i2)
	       || FUNC3 (insn, op1_brcl, op2_brcl, &r1, &i2)
	       || FUNC3 (insn, op1_brasl, op2_brasl, &r2, &i2))
	break;

      else
        /* An instruction we don't know how to simulate.  The only
           safe thing to do would be to set every value we're tracking
           to 'unknown'.  Instead, we'll be optimistic: we assume that
	   we *can* interpret every instruction that the compiler uses
	   to manipulate any of the data we're interested in here --
	   then we can just ignore anything else.  */
        ;

      /* Record the address after the last instruction that changed
         the FP, SP, or backlink.  Ignore instructions that changed
         them back to their original values --- those are probably
         restore instructions.  (The back chain is never restored,
         just popped.)  */
      {
        struct prologue_value *sp = &data->gpr[S390_SP_REGNUM - S390_R0_REGNUM];
        struct prologue_value *fp = &data->gpr[S390_FRAME_REGNUM - S390_R0_REGNUM];
        
        if ((! FUNC12 (&pre_insn_sp, sp)
             && ! FUNC13 (sp, S390_SP_REGNUM, 0))
            || (! FUNC12 (&pre_insn_fp, fp)
                && ! FUNC13 (fp, S390_FRAME_REGNUM, 0))
            || ! FUNC12 (&pre_insn_back_chain, &data->back_chain))
          result = next_pc;
      }
    }

  return result;
}