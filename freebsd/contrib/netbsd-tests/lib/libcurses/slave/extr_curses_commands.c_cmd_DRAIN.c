
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR ;
 int OK ;
 scalar_t__ getch () ;
 int report_count (int) ;
 int report_return (int ) ;

void
cmd_DRAIN(int nargs, char **args)
{
 while (getch() != ERR);
 report_count(1);
 report_return(OK);
}
