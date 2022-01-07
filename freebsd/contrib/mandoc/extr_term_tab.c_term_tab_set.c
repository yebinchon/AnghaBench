
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int dummy; } ;
struct tablist {size_t n; size_t s; size_t* t; } ;
struct roffsu {int dummy; } ;
struct TYPE_2__ {scalar_t__ d; struct tablist a; struct tablist p; } ;


 int SCALE_EM ;
 int SCALE_IN ;
 int * a2roffsu (char const*,struct roffsu*,int ) ;
 size_t* mandoc_reallocarray (size_t*,size_t,int) ;
 TYPE_1__ tabs ;
 void* term_hen (struct termp const*,struct roffsu*) ;

void
term_tab_set(const struct termp *p, const char *arg)
{
 static int recording_period;

 struct roffsu su;
 struct tablist *tl;
 size_t pos;
 int add;



 if (arg == ((void*)0)) {
  tabs.a.n = tabs.p.n = 0;
  recording_period = 0;
  if (tabs.d == 0) {
   a2roffsu(".8i", &su, SCALE_IN);
   tabs.d = term_hen(p, &su);
  }
  return;
 }
 if (arg[0] == 'T' && arg[1] == '\0') {
  recording_period = 1;
  return;
 }



 if (*arg == '+') {
  add = 1;
  arg++;
 } else
  add = 0;
 if (a2roffsu(arg, &su, SCALE_EM) == ((void*)0))
  return;



 tl = recording_period ? &tabs.p : &tabs.a;
 if (tl->n >= tl->s) {
  tl->s += 8;
  tl->t = mandoc_reallocarray(tl->t, tl->s, sizeof(*tl->t));
 }



 pos = term_hen(p, &su);
 tl->t[tl->n] = pos;
 if (add && tl->n)
  tl->t[tl->n] += tl->t[tl->n - 1];
 tl->n++;
}
