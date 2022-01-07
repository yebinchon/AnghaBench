
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni_config {int timer399; int timer398; int timer397; int init322; int timer322; int timer317; int init316; int timer316; int timer313; int timer310; int timer309; int init308; int timer308; int init303; int timer303; int timer301; int popt; int option; int proto; } ;
struct TYPE_2__ {scalar_t__ cause_hard; scalar_t__ bearer_hard; scalar_t__ git_hard; scalar_t__ q2932; } ;
struct uni {int timer399; int timer398; int timer397; int init322; int timer322; int timer317; int init316; int timer316; int timer313; int timer310; int timer309; int init308; int timer308; int init303; int timer303; int timer301; scalar_t__ sb_tb; TYPE_1__ cx; int proto; } ;


 int UNIOPT_BEARER_HARD ;
 int UNIOPT_CAUSE_HARD ;
 int UNIOPT_GIT_HARD ;
 int UNIPROTO_GFP ;
 int UNIPROTO_SB_TB ;

void
uni_get_config(const struct uni *uni, struct uni_config *config)
{
 config->proto = uni->proto;

 config->popt = 0;
 if (uni->cx.q2932)
  config->popt |= UNIPROTO_GFP;

 config->option = 0;
 if (uni->cx.git_hard)
  config->option |= UNIOPT_GIT_HARD;
 if (uni->cx.bearer_hard)
  config->option |= UNIOPT_BEARER_HARD;
 if (uni->cx.cause_hard)
  config->option |= UNIOPT_CAUSE_HARD;
 if (uni->sb_tb)
  config->popt |= UNIPROTO_SB_TB;

 config->timer301 = uni->timer301;
 config->timer303 = uni->timer303;
 config->init303 = uni->init303;
 config->timer308 = uni->timer308;
 config->init308 = uni->init308;
 config->timer309 = uni->timer309;
 config->timer310 = uni->timer310;
 config->timer313 = uni->timer313;
 config->timer316 = uni->timer316;
 config->init316 = uni->init316;
 config->timer317 = uni->timer317;
 config->timer322 = uni->timer322;
 config->init322 = uni->init322;
 config->timer397 = uni->timer397;
 config->timer398 = uni->timer398;
 config->timer399 = uni->timer399;
}
