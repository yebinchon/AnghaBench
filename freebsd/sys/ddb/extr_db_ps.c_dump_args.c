
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {TYPE_1__* p_args; } ;
struct TYPE_2__ {char* ar_args; scalar_t__ ar_length; } ;


 int db_printf (char*,...) ;

__attribute__((used)) static void
dump_args(volatile struct proc *p)
{
 char *args;
 int i, len;

 if (p->p_args == ((void*)0))
  return;
 args = p->p_args->ar_args;
 len = (int)p->p_args->ar_length;
 for (i = 0; i < len; i++) {
  if (args[i] == '\0')
   db_printf(" ");
  else
   db_printf("%c", args[i]);
 }
}
