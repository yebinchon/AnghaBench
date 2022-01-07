
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_target (int *) ;
 int class_obscure ;
 int connect_command ;
 int init_st2000_ops () ;
 int st2000_command ;
 int st2000_ops ;

void
_initialize_remote_st2000 (void)
{
  init_st2000_ops ();
  add_target (&st2000_ops);
  add_com ("st2000 <command>", class_obscure, st2000_command,
    "Send a command to the STDBUG monitor.");
  add_com ("connect", class_obscure, connect_command,
    "Connect the terminal directly up to the STDBUG command monitor.\nUse <CR>~. or <CR>~^D to break out.");

}
