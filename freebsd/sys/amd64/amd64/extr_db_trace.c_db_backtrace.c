
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_rsp; scalar_t__ tf_rbp; } ;
struct thread {int dummy; } ;
struct amd64_frame {int f_retaddr; } ;
typedef scalar_t__ register_t ;
typedef scalar_t__ db_expr_t ;
typedef long db_addr_t ;
typedef scalar_t__ c_db_sym_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ C_DB_SYM_NULL ;
 int DB_STGY_ANY ;
 int DB_STGY_PROC ;
 scalar_t__ FALSE ;
 scalar_t__ INKERNEL (long) ;
 scalar_t__ TRUE ;
 void* db_get_value (long,int,scalar_t__) ;
 int db_nextframe (struct amd64_frame**,long*,struct thread*) ;
 int db_pager_quit ;
 int db_print_stack_entry (char const*,long,struct amd64_frame*) ;
 scalar_t__ db_search_symbol (long,int ,scalar_t__*) ;
 int db_symbol_values (scalar_t__,char const**,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
db_backtrace(struct thread *td, struct trapframe *tf, struct amd64_frame *frame,
    db_addr_t pc, register_t sp, int count)
{
 struct amd64_frame *actframe;
 const char *name;
 db_expr_t offset;
 c_db_sym_t sym;
 boolean_t first;

 if (count == -1)
  count = 1024;

 first = TRUE;
 while (count-- && !db_pager_quit) {
  sym = db_search_symbol(pc, DB_STGY_ANY, &offset);
  db_symbol_values(sym, &name, ((void*)0));
  actframe = frame;
  if (first) {
   first = FALSE;
   if (sym == C_DB_SYM_NULL && sp != 0) {





    db_print_stack_entry(name, pc, ((void*)0));
    pc = db_get_value(sp, 8, FALSE);
    if (db_search_symbol(pc, DB_STGY_PROC,
        &offset) == C_DB_SYM_NULL)
     break;
    continue;
   } else if (tf != ((void*)0)) {
    int instr;

    instr = db_get_value(pc, 4, FALSE);
    if ((instr & 0xffffffff) == 0xe5894855) {

     actframe = (void *)(tf->tf_rsp - 8);
    } else if ((instr & 0xffffff) == 0xe58948) {

     actframe = (void *)tf->tf_rsp;
     if (tf->tf_rbp == 0) {

      frame = actframe;
     }
    } else if ((instr & 0xff) == 0xc3) {

     actframe = (void *)(tf->tf_rsp - 8);
    } else if (offset == 0) {

     actframe = (void *)(tf->tf_rsp - 8);
    }
   } else if (name != ((void*)0) &&
       strcmp(name, "fork_trampoline") == 0) {




    db_print_stack_entry(name, pc, actframe);
    break;
   }
  }

  db_print_stack_entry(name, pc, actframe);

  if (actframe != frame) {

   pc = (db_addr_t)
       db_get_value((long)&actframe->f_retaddr, 8, FALSE);
   continue;
  }

  db_nextframe(&frame, &pc, td);

  if (INKERNEL((long)pc) && !INKERNEL((long)frame)) {
   sym = db_search_symbol(pc, DB_STGY_ANY, &offset);
   db_symbol_values(sym, &name, ((void*)0));
   db_print_stack_entry(name, pc, frame);
   break;
  }
  if (!INKERNEL((long) frame)) {
   break;
  }
 }

 return (0);
}
