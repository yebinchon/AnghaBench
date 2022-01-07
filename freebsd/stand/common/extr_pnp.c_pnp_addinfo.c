
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnpinfo {int dummy; } ;


 int STAILQ_INSERT_TAIL (int *,struct pnpinfo*,int ) ;
 int pi_link ;
 int pnp_devices ;

void
pnp_addinfo(struct pnpinfo *pi)
{
    STAILQ_INSERT_TAIL(&pnp_devices, pi, pi_link);
}
