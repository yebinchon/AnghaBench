
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fpregs; int gregs; } ;
struct TYPE_7__ {TYPE_2__ uc_mcontext; } ;
struct thread_map {TYPE_3__ thr_ucontext; } ;
struct thread_info {TYPE_1__* private; } ;
struct TYPE_8__ {int (* to_fetch_registers ) (int) ;} ;
struct TYPE_5__ {int mapp; } ;


 int TRY_BASE (int ,int*) ;
 TYPE_4__ base_ops ;
 struct thread_info* find_thread_pid (int ) ;
 int inferior_ptid ;
 int read_map (int ,struct thread_map*) ;
 int stub1 (int) ;
 int supply_fpregset (int *) ;
 int supply_gregset (int *) ;

__attribute__((used)) static void
uw_thread_fetch_registers (int regno)
{
  int called;
  struct thread_info *info;
  struct thread_map map;

  TRY_BASE (base_ops.to_fetch_registers (regno), &called);
  if (called)
    return;

  if (!(info = find_thread_pid (inferior_ptid)))
    return;
  if (!read_map (info->private->mapp, &map))
    return;

  supply_gregset (&map.thr_ucontext.uc_mcontext.gregs);
  supply_fpregset (&map.thr_ucontext.uc_mcontext.fpregs);
}
