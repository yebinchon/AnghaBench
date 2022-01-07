
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int check_arg_count (int,int ) ;
 int erasewchar (int *) ;
 int report_count (int) ;
 int report_int (int ) ;
 int report_return (int ) ;

void
cmd_erasewchar(int nargs, char **args)
{
 wchar_t ch;

 if (check_arg_count(nargs, 0) == 1)
  return;


 report_count(2);
 report_return(erasewchar(&ch));
 report_int(ch);
}
