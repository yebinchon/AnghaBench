
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_cmd_arg_num (char const*,int) ;
 char** list_cmd_list () ;

__attribute__((used)) static char ** hostapd_cli_complete_help(const char *str, int pos)
{
 int arg = get_cmd_arg_num(str, pos);
 char **res = ((void*)0);

 switch (arg) {
 case 1:
  res = list_cmd_list();
  break;
 }

 return res;
}
