
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int add_target (int *) ;
 int class_obscure ;
 int e7000_command ;
 int e7000_drain_command ;
 int e7000_ftp_command ;
 int e7000_login_command ;
 int e7000_ops ;
 int init_e7000_ops () ;
 int no_class ;
 int setlist ;
 int showlist ;
 int use_hard_breakpoints ;
 int var_integer ;

void
_initialize_remote_e7000 (void)
{
  init_e7000_ops ();
  add_target (&e7000_ops);

  add_com ("e7000", class_obscure, e7000_command,
    "Send a command to the e7000 monitor.");

  add_com ("ftplogin", class_obscure, e7000_login_command,
    "Login to machine and change to directory.");

  add_com ("ftpload", class_obscure, e7000_ftp_command,
    "Fetch and load a file from previously described place.");

  add_com ("drain", class_obscure, e7000_drain_command,
    "Drain pending e7000 text buffers.");

  add_show_from_set (add_set_cmd ("usehardbreakpoints", no_class,
    var_integer, (char *) &use_hard_breakpoints,
 "Set use of hardware breakpoints for all breakpoints.\n", &setlist),
       &showlist);
}
