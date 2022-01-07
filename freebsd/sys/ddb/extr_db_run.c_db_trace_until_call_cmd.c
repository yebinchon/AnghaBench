
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int STEP_CALLT ;
 int db_cmd_loop_done ;
 scalar_t__ db_inst_count ;
 scalar_t__ db_load_count ;
 int db_run_mode ;
 int db_sstep_print ;
 scalar_t__ db_store_count ;

void
db_trace_until_call_cmd(db_expr_t addr, bool have_addr, db_expr_t count,
    char *modif)
{
 bool print = 0;

 if (modif[0] == 'p')
     print = 1;

 db_run_mode = STEP_CALLT;
 db_sstep_print = print;
 db_inst_count = 0;
 db_load_count = 0;
 db_store_count = 0;

 db_cmd_loop_done = 1;
}
