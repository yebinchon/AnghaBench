
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnpinfo {int dummy; } ;


 struct pnpinfo* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int pi_link ;
 int pnp_devices ;
 int pnp_freeinfo (struct pnpinfo*) ;

__attribute__((used)) static void
pnp_discard(void)
{
    struct pnpinfo *pi;

    while (STAILQ_FIRST(&pnp_devices) != ((void*)0)) {
 pi = STAILQ_FIRST(&pnp_devices);
 STAILQ_REMOVE_HEAD(&pnp_devices, pi_link);
 pnp_freeinfo(pi);
    }
}
