
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int TRUE ;
 int current_thread ;
 int do_child_store_inferior_registers (int) ;
 int inferior_ptid ;
 int thread_rec (int ,int ) ;

__attribute__((used)) static void
child_store_inferior_registers (int r)
{
  current_thread = thread_rec (PIDGET (inferior_ptid), TRUE);
  do_child_store_inferior_registers (r);
}
