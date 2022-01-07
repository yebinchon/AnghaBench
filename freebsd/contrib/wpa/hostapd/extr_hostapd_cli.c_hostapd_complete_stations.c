
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** cli_txt_list_array (int *) ;
 int get_cmd_arg_num (char const*,int) ;
 int stations ;

__attribute__((used)) static char ** hostapd_complete_stations(const char *str, int pos)
{
 int arg = get_cmd_arg_num(str, pos);
 char **res = ((void*)0);

 switch (arg) {
 case 1:
  res = cli_txt_list_array(&stations);
  break;
 }

 return res;
}
