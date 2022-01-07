
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int add_target (int *) ;
 int class_obscure ;
 int init_sds_ops () ;
 int no_class ;
 int sds_command ;
 int sds_ops ;
 int sds_timeout ;
 int setlist ;
 int showlist ;
 int var_integer ;

void
_initialize_remote_sds (void)
{
  init_sds_ops ();
  add_target (&sds_ops);

  add_show_from_set (add_set_cmd ("sdstimeout", no_class,
      var_integer, (char *) &sds_timeout,
        "Set timeout value for sds read.\n", &setlist),
       &showlist);

  add_com ("sds", class_obscure, sds_command,
    "Send a command to the SDS monitor.");
}
