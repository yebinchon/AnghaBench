
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int whatis_exp (char*,int) ;

__attribute__((used)) static void
whatis_command (char *exp, int from_tty)
{



  whatis_exp (exp, -1);
}
