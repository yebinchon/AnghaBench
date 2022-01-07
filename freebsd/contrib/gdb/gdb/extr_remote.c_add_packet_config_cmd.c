
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_config {char* name; char* title; int detect; int support; } ;
struct cmd_list_element {int dummy; } ;
typedef int cmd_sfunc_ftype ;


 int AUTO_BOOLEAN_AUTO ;
 int PACKET_SUPPORT_UNKNOWN ;
 int add_alias_cmd (char*,char*,int ,int ,struct cmd_list_element**) ;
 int add_setshow_auto_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,struct cmd_list_element**,struct cmd_list_element**) ;
 int class_obscure ;
 int xasprintf (char**,char*,char*,...) ;

__attribute__((used)) static void
add_packet_config_cmd (struct packet_config *config,
         char *name,
         char *title,
         cmd_sfunc_ftype *set_func,
         cmd_sfunc_ftype *show_func,
         struct cmd_list_element **set_remote_list,
         struct cmd_list_element **show_remote_list,
         int legacy)
{
  struct cmd_list_element *set_cmd;
  struct cmd_list_element *show_cmd;
  char *set_doc;
  char *show_doc;
  char *cmd_name;
  config->name = name;
  config->title = title;
  config->detect = AUTO_BOOLEAN_AUTO;
  config->support = PACKET_SUPPORT_UNKNOWN;
  xasprintf (&set_doc, "Set use of remote protocol `%s' (%s) packet",
      name, title);
  xasprintf (&show_doc, "Show current use of remote protocol `%s' (%s) packet",
      name, title);

  xasprintf (&cmd_name, "%s-packet", title);
  add_setshow_auto_boolean_cmd (cmd_name, class_obscure,
    &config->detect, set_doc, show_doc,
    set_func, show_func,
    set_remote_list, show_remote_list);

  if (legacy)
    {
      char *legacy_name;
      xasprintf (&legacy_name, "%s-packet", name);
      add_alias_cmd (legacy_name, cmd_name, class_obscure, 0,
       set_remote_list);
      add_alias_cmd (legacy_name, cmd_name, class_obscure, 0,
       show_remote_list);
    }
}
