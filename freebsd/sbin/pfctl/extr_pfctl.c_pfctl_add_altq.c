
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfctl {int opts; TYPE_1__* paltq; int dev; } ;
struct pf_altq {int ifname; } ;
struct TYPE_2__ {int altq; } ;


 int DIOCADDALTQ ;
 scalar_t__ ENODEV ;
 scalar_t__ ENXIO ;
 int PFCTL_FLAG_ALTQ ;
 int PF_OPT_NOACTION ;
 scalar_t__ altqsupport ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int loadopt ;
 int memcpy (int *,struct pf_altq*,int) ;
 int pfaltq_store (int *) ;

int
pfctl_add_altq(struct pfctl *pf, struct pf_altq *a)
{
 if (altqsupport &&
     (loadopt & PFCTL_FLAG_ALTQ) != 0) {
  memcpy(&pf->paltq->altq, a, sizeof(struct pf_altq));
  if ((pf->opts & PF_OPT_NOACTION) == 0) {
   if (ioctl(pf->dev, DIOCADDALTQ, pf->paltq)) {
    if (errno == ENXIO)
     errx(1, "qtype not configured");
    else if (errno == ENODEV)
     errx(1, "%s: driver does not support "
         "altq", a->ifname);
    else
     err(1, "DIOCADDALTQ");
   }
  }
  pfaltq_store(&pf->paltq->altq);
 }
 return (0);
}
