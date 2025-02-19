
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parm {int parm_int_state; scalar_t__ parm_rdisc_pref; scalar_t__ parm_rdisc_int; scalar_t__ parm_d_metric; scalar_t__ parm_adj_inmetric; scalar_t__ parm_adj_outmetric; TYPE_1__* parm_auth; int parm_mask; int parm_net; int parm_name; struct parm* parm_next; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int GROUP_IS_ADV_OUT ;
 int GROUP_IS_SOL_OUT ;
 int IS_NO_ADV_IN ;
 int IS_NO_SOL_OUT ;
 int MAX_AUTH_KEYS ;
 scalar_t__ RIP_AUTH_NONE ;
 int htonl (int ) ;
 int memcpy (struct parm*,struct parm*,int) ;
 int on_net (int ,int ,int ) ;
 struct parm* parms ;
 scalar_t__ rtmalloc (int,char*) ;
 scalar_t__ strcmp (int ,int ) ;

const char *
check_parms(struct parm *new)
{
 struct parm *parmp, **parmpp;
 int i, num_passwds;



 if (new->parm_int_state & IS_NO_ADV_IN)
  new->parm_int_state |= IS_NO_SOL_OUT;
 if (new->parm_int_state & IS_NO_SOL_OUT)
  new->parm_int_state |= IS_NO_ADV_IN;

 for (i = num_passwds = 0; i < MAX_AUTH_KEYS; i++) {
  if (new->parm_auth[i].type != RIP_AUTH_NONE)
   num_passwds++;
 }



 for (parmpp = &parms;
      (parmp = *parmpp) != ((void*)0);
      parmpp = &parmp->parm_next) {
  if (strcmp(new->parm_name, parmp->parm_name))
   continue;
  if (!on_net(htonl(parmp->parm_net),
       new->parm_net, new->parm_mask)
      && !on_net(htonl(new->parm_net),
          parmp->parm_net, parmp->parm_mask))
   continue;

  for (i = 0; i < MAX_AUTH_KEYS; i++) {
   if (parmp->parm_auth[i].type != RIP_AUTH_NONE)
    num_passwds++;
  }
  if (num_passwds > MAX_AUTH_KEYS)
   return "too many conflicting passwords";

  if ((0 != (new->parm_int_state & GROUP_IS_SOL_OUT)
       && 0 != (parmp->parm_int_state & GROUP_IS_SOL_OUT)
       && 0 != ((new->parm_int_state ^ parmp->parm_int_state)
         & GROUP_IS_SOL_OUT))
      || (0 != (new->parm_int_state & GROUP_IS_ADV_OUT)
   && 0 != (parmp->parm_int_state & GROUP_IS_ADV_OUT)
   && 0 != ((new->parm_int_state ^ parmp->parm_int_state)
     & GROUP_IS_ADV_OUT))
      || (new->parm_rdisc_pref != 0
   && parmp->parm_rdisc_pref != 0
   && new->parm_rdisc_pref != parmp->parm_rdisc_pref)
      || (new->parm_rdisc_int != 0
   && parmp->parm_rdisc_int != 0
   && new->parm_rdisc_int != parmp->parm_rdisc_int)) {
   return ("conflicting, duplicate router discovery"
    " parameters");

  }

  if (new->parm_d_metric != 0
       && parmp->parm_d_metric != 0
       && new->parm_d_metric != parmp->parm_d_metric) {
   return ("conflicting, duplicate poor man's router"
    " discovery or fake default metric");
  }

  if (new->parm_adj_inmetric != 0
      && parmp->parm_adj_inmetric != 0
      && new->parm_adj_inmetric != parmp->parm_adj_inmetric) {
   return ("conflicting interface input "
    "metric adjustments");
  }

  if (new->parm_adj_outmetric != 0
      && parmp->parm_adj_outmetric != 0
      && new->parm_adj_outmetric != parmp->parm_adj_outmetric) {
   return ("conflicting interface output "
    "metric adjustments");
  }
 }




 parmp = (struct parm*)rtmalloc(sizeof(*parmp), "check_parms");
 memcpy(parmp, new, sizeof(*parmp));
 *parmpp = parmp;

 return 0;
}
