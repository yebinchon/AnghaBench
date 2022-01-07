
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int default_classes; int qpris; } ;
struct pfctl_altq {TYPE_3__ meta; } ;
struct pfctl {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ priq_opts; } ;
struct pf_altq {scalar_t__ priority; TYPE_2__ pq_u; int ifname; int qname; } ;


 scalar_t__ BIT_ISSET (int ,scalar_t__,int *) ;
 int BIT_SET (int ,scalar_t__,int *) ;
 int PRCF_DEFAULTCLASS ;
 scalar_t__ PRIQ_MAXPRI ;
 int QPRI_BITSET_SIZE ;
 int warnx (char*,scalar_t__,...) ;

__attribute__((used)) static int
eval_pfqueue_priq(struct pfctl *pf, struct pf_altq *pa, struct pfctl_altq *if_ppa)
{

 if (pa->priority >= PRIQ_MAXPRI) {
  warnx("priority out of range: max %d", PRIQ_MAXPRI - 1);
  return (-1);
 }
 if (BIT_ISSET(QPRI_BITSET_SIZE, pa->priority, &if_ppa->meta.qpris)) {
  warnx("%s does not have a unique priority on interface %s",
      pa->qname, pa->ifname);
  return (-1);
 } else
  BIT_SET(QPRI_BITSET_SIZE, pa->priority, &if_ppa->meta.qpris);

 if (pa->pq_u.priq_opts.flags & PRCF_DEFAULTCLASS)
  if_ppa->meta.default_classes++;
 return (0);
}
