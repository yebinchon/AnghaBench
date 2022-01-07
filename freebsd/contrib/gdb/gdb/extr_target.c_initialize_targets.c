
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,int ) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_maintenance ;
 int class_obscure ;
 int class_support ;
 int dcache_init () ;
 int do_monitor_command ;
 int dummy_target ;
 int init_dummy_target () ;
 int push_target (int *) ;
 int setdebuglist ;
 int setlist ;
 int showdebuglist ;
 int showlist ;
 int targ_desc ;
 int target_dcache ;
 int target_info ;
 int targetdebug ;
 int trust_readonly ;
 int var_zinteger ;

void
initialize_targets (void)
{
  init_dummy_target ();
  push_target (&dummy_target);

  add_info ("target", target_info, targ_desc);
  add_info ("files", target_info, targ_desc);

  add_show_from_set
    (add_set_cmd ("target", class_maintenance, var_zinteger,
    (char *) &targetdebug,
    "Set target debugging.\nWhen non-zero, target debugging is enabled.", &setdebuglist),

     &showdebuglist);

  add_setshow_boolean_cmd ("trust-readonly-sections", class_support,
      &trust_readonly, "Set mode for reading from readonly sections.\nWhen this mode is on, memory reads from readonly sections (such as .text)\nwill be read from the object file instead of from the target.  This will\nresult in significant performance improvement for remote targets.", "Show mode for reading from readonly sections.\n",





      ((void*)0), ((void*)0),
      &setlist, &showlist);

  add_com ("monitor", class_obscure, do_monitor_command,
    "Send a command to the remote monitor (remote targets only).");

  target_dcache = dcache_init ();
}
