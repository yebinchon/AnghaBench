
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct ccsig {void* arg2; void* arg1; void* sig; void* target; void* has_msg; void* type; } ;
struct ccdata {int free_sigs; } ;


 struct ccsig* CCZALLOC (int) ;
 struct ccsig* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccsig*,int ) ;
 int cc_log (struct ccdata*,char*,void*,void*) ;
 int link ;

__attribute__((used)) static struct ccsig *
sig_alloc(struct ccdata *cc, u_int type, void *target, u_int has_msg,
    u_int sig, void *arg1, u_int arg2)
{
 struct ccsig *s;

 if ((s = TAILQ_FIRST(&cc->free_sigs)) == ((void*)0)) {
  s = CCZALLOC(sizeof(struct ccsig));
  if (s == ((void*)0)) {
   cc_log(cc, "signal %u/%u lost - ENOMEM", type, sig);
   return (((void*)0));
  }
 } else
  TAILQ_REMOVE(&cc->free_sigs, s, link);

 s->type = type;
 s->has_msg = has_msg;
 s->target = target;
 s->sig = sig;
 s->arg1 = arg1;
 s->arg2 = arg2;

 return (s);
}
