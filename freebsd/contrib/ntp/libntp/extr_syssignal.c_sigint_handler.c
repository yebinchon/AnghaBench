
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int UNUSED_ARG (int) ;
 int ctrl_c_hook () ;
 int stub1 () ;

RETSIGTYPE
sigint_handler(
 int signum
 )
{
 UNUSED_ARG(signum);
 if (ctrl_c_hook != ((void*)0))
  (*ctrl_c_hook)();
}
