
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int register_t ;
typedef scalar_t__ db_addr_t ;


 int arm_predict_branch (int *,int ,int ,int *,int ,int ) ;
 int db_branch_taken_fetch_reg ;
 int db_branch_taken_read_int ;
 int kdb_reenter () ;

u_int
branch_taken(u_int insn, db_addr_t pc)
{
 register_t new_pc;
 int ret;

 ret = arm_predict_branch(((void*)0), insn, (register_t)pc, &new_pc,
     db_branch_taken_fetch_reg, db_branch_taken_read_int);

 if (ret != 0)
  kdb_reenter();

 return (new_pc);
}
