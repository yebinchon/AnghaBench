
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int add_target (int *) ;
 int child_ops ;
 int class_support ;
 int debug_events ;
 int debug_exceptions ;
 int debug_exec ;
 int debug_memory ;
 int init_child_ops () ;
 int no_class ;
 int remote_add_host ;
 scalar_t__ remote_directory ;
 int remote_upload ;
 int set_cmd_cfunc (struct cmd_list_element*,int (*) (int *,int )) ;
 int set_upload_type (int *,int ) ;
 int setlist ;
 int showlist ;
 int var_boolean ;
 int var_string_noescape ;
 scalar_t__ xstrdup (scalar_t__) ;

void
_initialize_wince (void)
{
  struct cmd_list_element *set;
  init_child_ops ();

  add_show_from_set
    (add_set_cmd ((char *) "remotedirectory", no_class,
    var_string_noescape, (char *) &remote_directory,
    (char *) "Set directory for remote upload.\n",
    &setlist),
     &showlist);
  remote_directory = xstrdup (remote_directory);

  set = add_set_cmd ((char *) "remoteupload", no_class,
       var_string_noescape, (char *) &remote_upload,
        (char *) "Set how to upload executables to remote device.\n",
       &setlist);
  add_show_from_set (set, &showlist);
  set_cmd_cfunc (set, set_upload_type);
  set_upload_type (((void*)0), 0);

  add_show_from_set
    (add_set_cmd ((char *) "debugexec", class_support, var_boolean,
    (char *) &debug_exec,
       (char *) "Set whether to display execution in child process.",
    &setlist),
     &showlist);

  add_show_from_set
    (add_set_cmd ((char *) "remoteaddhost", class_support, var_boolean,
    (char *) &remote_add_host,
    (char *) "Set whether to add this host to remote stub arguments for\ndebugging over a network.", &setlist),


     &showlist);

  add_show_from_set
    (add_set_cmd ((char *) "debugevents", class_support, var_boolean,
    (char *) &debug_events,
   (char *) "Set whether to display kernel events in child process.",
    &setlist),
     &showlist);

  add_show_from_set
    (add_set_cmd ((char *) "debugmemory", class_support, var_boolean,
    (char *) &debug_memory,
 (char *) "Set whether to display memory accesses in child process.",
    &setlist),
     &showlist);

  add_show_from_set
    (add_set_cmd ((char *) "debugexceptions", class_support, var_boolean,
    (char *) &debug_exceptions,
      (char *) "Set whether to display kernel exceptions in child process.",
    &setlist),
     &showlist);

  add_target (&child_ops);
}
