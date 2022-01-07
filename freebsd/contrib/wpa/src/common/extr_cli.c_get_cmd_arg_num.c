
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_cmd_arg_num(const char *str, int pos)
{
 int arg = 0, i;

 for (i = 0; i <= pos; i++) {
  if (str[i] != ' ') {
   arg++;
   while (i <= pos && str[i] != ' ')
    i++;
  }
 }

 if (arg > 0)
  arg--;
 return arg;
}
