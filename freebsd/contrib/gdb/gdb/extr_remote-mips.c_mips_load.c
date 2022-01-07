
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MON_IDT ;
 size_t PC_REGNUM ;
 int bfd_get_start_address (scalar_t__) ;
 int clear_symtab_users () ;
 scalar_t__* deprecated_register_valid ;
 int error (char*) ;
 scalar_t__ exec_bfd ;
 int inferior_ptid ;
 scalar_t__ mips_exit_debug () ;
 int mips_initialize () ;
 int mips_load_srec (char*) ;
 scalar_t__ mips_monitor ;
 int null_ptid ;
 int pmon_load_fast (char*) ;
 int write_pc (int ) ;

__attribute__((used)) static void
mips_load (char *file, int from_tty)
{

  if (mips_exit_debug ())
    error ("mips_load:  Couldn't get into monitor mode.");

  if (mips_monitor != MON_IDT)
    pmon_load_fast (file);
  else
    mips_load_srec (file);

  mips_initialize ();


  if (mips_monitor != MON_IDT)
    {



      deprecated_register_valid[PC_REGNUM] = 0;
    }
  if (exec_bfd)
    write_pc (bfd_get_start_address (exec_bfd));

  inferior_ptid = null_ptid;







  clear_symtab_users ();
}
