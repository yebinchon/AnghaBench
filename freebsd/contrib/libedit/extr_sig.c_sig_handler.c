
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_12__ {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
struct TYPE_11__ {TYPE_1__* el_signal; } ;
struct TYPE_10__ {int sig_no; TYPE_5__* sig_action; } ;


 int CC_REFRESH ;


 int SIG_BLOCK ;
 int SIG_ERR ;
 int SIG_SETMASK ;
 int ed_redisplay (TYPE_2__*,int ) ;
 int el_resize (TYPE_2__*) ;
 int errno ;
 int kill (int ,int) ;
 int re_refresh (TYPE_2__*) ;
 TYPE_2__* sel ;
 int sigaction (int,TYPE_5__*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int* sighdl ;
 int sigprocmask (int ,int *,int *) ;
 int terminal__flush (TYPE_2__*) ;
 int tty_cookedmode (TYPE_2__*) ;
 int tty_rawmode (TYPE_2__*) ;

__attribute__((used)) static void
sig_handler(int signo)
{
 int i, save_errno;
 sigset_t nset, oset;

 save_errno = errno;
 (void) sigemptyset(&nset);
 (void) sigaddset(&nset, signo);
 (void) sigprocmask(SIG_BLOCK, &nset, &oset);

 sel->el_signal->sig_no = signo;

 switch (signo) {
 case 129:
  tty_rawmode(sel);
  if (ed_redisplay(sel, 0) == CC_REFRESH)
   re_refresh(sel);
  terminal__flush(sel);
  break;

 case 128:
  el_resize(sel);
  break;

 default:
  tty_cookedmode(sel);
  break;
 }

 for (i = 0; sighdl[i] != -1; i++)
  if (signo == sighdl[i])
   break;

 (void) sigaction(signo, &sel->el_signal->sig_action[i], ((void*)0));
 sel->el_signal->sig_action[i].sa_handler = SIG_ERR;
 sel->el_signal->sig_action[i].sa_flags = 0;
 sigemptyset(&sel->el_signal->sig_action[i].sa_mask);
 (void) sigprocmask(SIG_SETMASK, &oset, ((void*)0));
 (void) kill(0, signo);
 errno = save_errno;
}
