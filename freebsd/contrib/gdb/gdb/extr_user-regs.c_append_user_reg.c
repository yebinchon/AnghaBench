
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_reg_read_ftype ;
struct user_reg {char const* name; struct user_reg* next; int * read; } ;
struct gdb_user_regs {struct user_reg** last; } ;


 int gdb_assert (int ) ;

__attribute__((used)) static void
append_user_reg (struct gdb_user_regs *regs, const char *name,
   user_reg_read_ftype *read, struct user_reg *reg)
{



  gdb_assert (reg != ((void*)0));
  reg->name = name;
  reg->read = read;
  reg->next = ((void*)0);
  (*regs->last) = reg;
  regs->last = &(*regs->last)->next;
}
