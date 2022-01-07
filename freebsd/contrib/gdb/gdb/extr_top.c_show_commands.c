
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;


 int Hist_print ;
 int history_base ;
 TYPE_1__* history_get (int) ;
 int history_size ;
 int parse_and_eval_long (char*) ;
 int printf_filtered (char*,int,int ) ;

void
show_commands (char *args, int from_tty)
{

  int offset;



  static int num = 0;



  int hist_len;



  hist_len = history_size;
  for (offset = 0; offset < history_size; offset++)
    {
      if (!history_get (history_base + offset))
 {
   hist_len = offset;
   break;
 }
    }

  if (args)
    {
      if (args[0] == '+' && args[1] == '\0')

 ;
      else

 num = (parse_and_eval_long (args) - history_base) - Hist_print / 2;
    }

  else
    {
      num = hist_len - Hist_print;
    }

  if (num < 0)
    num = 0;



  if (hist_len - num < Hist_print)
    {
      num = hist_len - Hist_print;
      if (num < 0)
 num = 0;
    }

  for (offset = num; offset < num + Hist_print && offset < hist_len; offset++)
    {
      printf_filtered ("%5d  %s\n", history_base + offset,
         (history_get (history_base + offset))->line);
    }



  num += Hist_print;




  if (from_tty && args)
    {
      args[0] = '+';
      args[1] = '\0';
    }
}
