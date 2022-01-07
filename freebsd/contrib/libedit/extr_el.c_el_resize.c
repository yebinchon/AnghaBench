
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int EditLine ;


 int SIGWINCH ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int terminal_change_size (int *,int,int) ;
 scalar_t__ terminal_get_size (int *,int*,int*) ;

void
el_resize(EditLine *el)
{
 int lins, cols;
 sigset_t oset, nset;

 (void) sigemptyset(&nset);
 (void) sigaddset(&nset, SIGWINCH);
 (void) sigprocmask(SIG_BLOCK, &nset, &oset);


 if (terminal_get_size(el, &lins, &cols))
  terminal_change_size(el, lins, cols);

 (void) sigprocmask(SIG_SETMASK, &oset, ((void*)0));
}
