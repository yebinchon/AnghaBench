
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int ps_err_e ;
typedef int gdb_ps_addr_t ;
struct TYPE_5__ {int (* to_xfer_memory ) (int,char*,int,int,int ,int *) ;} ;
struct TYPE_4__ {int (* to_xfer_memory ) (int,char*,int,int,int ,TYPE_1__*) ;} ;


 int PS_ERR ;
 int PS_OK ;
 int bfd_get_arch_size (int ) ;
 int core_ops ;
 int do_cleanups (struct cleanup*) ;
 int errno ;
 int exec_bfd ;
 int inferior_ptid ;
 scalar_t__ is_thread (int ) ;
 TYPE_3__ orig_core_ops ;
 int print_sys_errmsg (char*,int ) ;
 int procfs_first_available () ;
 TYPE_1__ procfs_ops ;
 struct cleanup* save_inferior_ptid () ;
 int stub1 (int,char*,int,int,int ,TYPE_1__*) ;
 int stub2 (int,char*,int,int,int ,int *) ;
 scalar_t__ target_has_execution ;
 int target_thread_alive (int ) ;
 int warning (char*,long) ;

__attribute__((used)) static ps_err_e
rw_common (int dowrite, const struct ps_prochandle *ph, gdb_ps_addr_t addr,
    char *buf, int size)
{
  struct cleanup *old_chain;

  old_chain = save_inferior_ptid ();

  if (is_thread (inferior_ptid) ||
      !target_thread_alive (inferior_ptid))
    inferior_ptid = procfs_first_available ();
  while (size > 0)
    {
      int cc;


      if (target_has_execution)
 cc = procfs_ops.to_xfer_memory (addr, buf, size,
     dowrite, 0, &procfs_ops);
      else
 cc = orig_core_ops.to_xfer_memory (addr, buf, size,
        dowrite, 0, &core_ops);

      if (cc < 0)
 {
   if (dowrite == 0)
     print_sys_errmsg ("rw_common (): read", errno);
   else
     print_sys_errmsg ("rw_common (): write", errno);

   do_cleanups (old_chain);

   return PS_ERR;
 }
      else if (cc == 0)
 {
   if (dowrite == 0)
     warning ("rw_common (): unable to read at addr 0x%lx",
       (long) addr);
   else
     warning ("rw_common (): unable to write at addr 0x%lx",
       (long) addr);

   do_cleanups (old_chain);

   return PS_ERR;
 }

      size -= cc;
      buf += cc;
    }

  do_cleanups (old_chain);

  return PS_OK;
}
