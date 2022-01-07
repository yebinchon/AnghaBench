
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int el_outfile; } ;
typedef TYPE_1__ EditLine ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int terminal_mutex ;
 int terminal_outfile ;
 int terminal_putc ;
 int tputs (char const*,int,int ) ;

__attribute__((used)) static void
terminal_tputs(EditLine *el, const char *cap, int affcnt)
{



 terminal_outfile = el->el_outfile;
 (void)tputs(cap, affcnt, terminal_putc);



}
