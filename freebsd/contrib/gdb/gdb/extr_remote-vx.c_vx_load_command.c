
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ PIDGET (int ) ;
 int QUIT ;
 int dont_repeat () ;
 int error (char*) ;
 int immediate_quit ;
 int inferior_ptid ;
 int make_cleanup (int ,char*) ;
 int net_load (char*,int *,int *,int *) ;
 scalar_t__ query (char*) ;
 int reinit_frame_cache () ;
 scalar_t__ target_has_execution ;
 int target_kill () ;
 char* tilde_expand (char*) ;
 int vx_add_symbols (char*,int,int ,int ,int ) ;
 int xfree ;

__attribute__((used)) static void
vx_load_command (char *arg_string, int from_tty)
{
  CORE_ADDR text_addr;
  CORE_ADDR data_addr;
  CORE_ADDR bss_addr;

  if (arg_string == 0)
    error ("The load command takes a file name");

  arg_string = tilde_expand (arg_string);
  make_cleanup (xfree, arg_string);

  dont_repeat ();




  if (PIDGET (inferior_ptid) != 0 && target_has_execution)
    {
      if (query ("You may not load a module while the target task is running.\nKill the target task? "))

 target_kill ();
      else
 error ("Load canceled.");
    }

  QUIT;
  immediate_quit++;
  if (net_load (arg_string, &text_addr, &data_addr, &bss_addr) == -1)
    error ("Load failed on target machine");
  immediate_quit--;

  vx_add_symbols (arg_string, from_tty, text_addr, data_addr, bss_addr);



  reinit_frame_cache ();
}
