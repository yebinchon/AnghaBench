
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sy_call_t ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_2__* p_sysent; } ;
typedef scalar_t__ db_expr_t ;
typedef int db_addr_t ;
typedef scalar_t__ c_db_sym_t ;
struct TYPE_4__ {int sv_size; int sv_name; TYPE_1__* sv_table; } ;
struct TYPE_3__ {int * sy_call; } ;


 int DB_STGY_ANY ;
 scalar_t__ DB_SYM_NULL ;
 int db_printf (char*,...) ;
 scalar_t__ db_search_symbol (int ,int ,scalar_t__*) ;
 int db_symbol_values (scalar_t__,char const**,int *) ;

__attribute__((used)) static void
decode_syscall(int number, struct thread *td)
{
 struct proc *p;
 c_db_sym_t sym;
 db_expr_t diff;
 sy_call_t *f;
 const char *symname;

 db_printf(" (%d", number);
 p = (td != ((void*)0)) ? td->td_proc : ((void*)0);
 if (p != ((void*)0) && 0 <= number && number < p->p_sysent->sv_size) {
  f = p->p_sysent->sv_table[number].sy_call;
  sym = db_search_symbol((db_addr_t)f, DB_STGY_ANY, &diff);
  if (sym != DB_SYM_NULL && diff == 0) {
   db_symbol_values(sym, &symname, ((void*)0));
   db_printf(", %s, %s", p->p_sysent->sv_name, symname);
  }
 }
 db_printf(")");
}
