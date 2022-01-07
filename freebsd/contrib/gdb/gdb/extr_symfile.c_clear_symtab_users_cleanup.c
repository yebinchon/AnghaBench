
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_symtab_users () ;

__attribute__((used)) static void
clear_symtab_users_cleanup (void *ignore)
{
  clear_symtab_users ();
}
