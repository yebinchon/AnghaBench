
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_funcs {int dummy; } ;
struct uni {int timer399; int timer398; int timer397; int init322; int timer322; int timer317; int timer316; int init316; int timer313; int timer310; int timer308; int init308; int timer303; int init303; int timer301; int cx; int calls; int timer309; int delq; int workq; scalar_t__ sb_tb; int proto; void* arg; struct uni_funcs const* funcs; } ;


 struct uni* INS_ALLOC () ;
 int TAILQ_INIT (int *) ;
 int TIMER_INIT_UNI (struct uni*,int ) ;
 int UNIPROTO_UNI40U ;
 int UNI_T301_DEFAULT ;
 int UNI_T303_CNT_DEFAULT ;
 int UNI_T303_DEFAULT ;
 int UNI_T308_CNT_DEFAULT ;
 int UNI_T308_DEFAULT ;
 int UNI_T309_DEFAULT ;
 int UNI_T310U_DEFAULT ;
 int UNI_T313_DEFAULT ;
 int UNI_T316_CNT_DEFAULT ;
 int UNI_T316_DEFAULT ;
 int UNI_T317_DEFAULT ;
 int UNI_T322_CNT_DEFAULT ;
 int UNI_T322_DEFAULT ;
 int UNI_T397_DEFAULT ;
 int UNI_T398_DEFAULT ;
 int UNI_T399U_DEFAULT ;
 int t309 ;
 int t316 ;
 int t317 ;
 int uni_init (struct uni*) ;
 int uni_initcx (int *) ;

struct uni *
uni_create(void *arg, const struct uni_funcs *funcs)
{
 struct uni *uni;

 if ((uni = INS_ALLOC()) == ((void*)0))
  return (((void*)0));

 uni_init(uni);

 uni->funcs = funcs;
 uni->arg = arg;
 uni->proto = UNIPROTO_UNI40U;
 uni->sb_tb = 0;
 TAILQ_INIT(&uni->workq);
 TAILQ_INIT(&uni->delq);
 TIMER_INIT_UNI(uni, t309);
 uni->timer309 = UNI_T309_DEFAULT;
 TAILQ_INIT(&uni->calls);
 uni_initcx(&uni->cx);
 TIMER_INIT_UNI(uni, t317);
 TIMER_INIT_UNI(uni, t316);

 uni->timer301 = UNI_T301_DEFAULT;
 uni->init303 = UNI_T303_CNT_DEFAULT;
 uni->timer303 = UNI_T303_DEFAULT;
 uni->init308 = UNI_T308_CNT_DEFAULT;
 uni->timer308 = UNI_T308_DEFAULT;
 uni->timer310 = UNI_T310U_DEFAULT;
 uni->timer313 = UNI_T313_DEFAULT;
 uni->init316 = UNI_T316_CNT_DEFAULT;
 uni->timer316 = UNI_T316_DEFAULT;
 uni->timer317 = UNI_T317_DEFAULT;
 uni->timer322 = UNI_T322_DEFAULT;
 uni->init322 = UNI_T322_CNT_DEFAULT;
 uni->timer397 = UNI_T397_DEFAULT;
 uni->timer398 = UNI_T398_DEFAULT;
 uni->timer399 = UNI_T399U_DEFAULT;

 return (uni);
}
