
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscop_sig {int msg; int sig; } ;
struct sscop {int in_sig; int sigs; } ;
typedef int sscop_sigq_head_t ;


 int SIGQ_APPEND (int *,struct sscop_sig*) ;
 struct sscop_sig* SIGQ_GET (int *) ;
 int SIGQ_INIT (int *) ;
 int SIGQ_MOVE (int *,int *) ;
 int SIGQ_PREPEND (int *,int *) ;
 int SIG_FREE (struct sscop_sig*) ;
 scalar_t__ sig_exec (struct sscop*,int ,int ) ;

__attribute__((used)) static void
handle_sigs(struct sscop *sscop)
{
 struct sscop_sig *s;
 sscop_sigq_head_t dsigs, q;
 int exec;

 sscop->in_sig++;
 SIGQ_INIT(&q);
 SIGQ_INIT(&dsigs);
 do {
  exec = 0;




  SIGQ_MOVE(&sscop->sigs, &q);




  while((s = SIGQ_GET(&q)) != ((void*)0)) {
   if(sig_exec(sscop, s->sig, s->msg)) {
    exec = 1;
    SIG_FREE(s);
   } else {
    SIGQ_APPEND(&dsigs, s);
   }
  }





  SIGQ_PREPEND(&dsigs, &sscop->sigs);
 } while(exec);
 sscop->in_sig--;
}
