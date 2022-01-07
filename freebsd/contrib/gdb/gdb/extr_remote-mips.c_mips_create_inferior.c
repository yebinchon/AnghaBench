
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int TARGET_SIGNAL_DEFAULT ;
 scalar_t__ bfd_get_start_address (scalar_t__) ;
 int error (char*) ;
 scalar_t__ exec_bfd ;
 int execute_command (char*,int ) ;
 int init_wait_for_inferior () ;
 int proceed (scalar_t__,int ,int ) ;
 int warning (char*) ;

__attribute__((used)) static void
mips_create_inferior (char *execfile, char *args, char **env)
{
  CORE_ADDR entry_pt;

  if (args && *args)
    {
      warning ("Can't pass arguments to remote MIPS board; arguments ignored.");


      execute_command ("set args", 0);
    }

  if (execfile == 0 || exec_bfd == 0)
    error ("No executable file specified");

  entry_pt = (CORE_ADDR) bfd_get_start_address (exec_bfd);

  init_wait_for_inferior ();



  proceed (entry_pt, TARGET_SIGNAL_DEFAULT, 0);
}
