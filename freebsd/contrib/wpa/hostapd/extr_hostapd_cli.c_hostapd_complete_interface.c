
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_DL_LIST (int ) ;
 char** cli_txt_list_array (int *) ;
 int cli_txt_list_flush (int *) ;
 int ctrl_conn ;
 int get_cmd_arg_num (char const*,int) ;
 int hostapd_cli_get_interfaces (int ,int *) ;
 int interfaces ;

__attribute__((used)) static char ** hostapd_complete_interface(const char *str, int pos)
{
 int arg = get_cmd_arg_num(str, pos);
 char **res = ((void*)0);
 DEFINE_DL_LIST(interfaces);

 switch (arg) {
 case 1:
  hostapd_cli_get_interfaces(ctrl_conn, &interfaces);
  res = cli_txt_list_array(&interfaces);
  cli_txt_list_flush(&interfaces);
  break;
 }

 return res;
}
