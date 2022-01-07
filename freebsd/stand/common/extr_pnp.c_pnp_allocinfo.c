
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnpinfo {int pi_ident; } ;


 int STAILQ_INIT (int *) ;
 int bzero (struct pnpinfo*,int) ;
 struct pnpinfo* malloc (int) ;

struct pnpinfo *
pnp_allocinfo(void)
{
    struct pnpinfo *pi;

    pi = malloc(sizeof(struct pnpinfo));
    bzero(pi, sizeof(struct pnpinfo));
    STAILQ_INIT(&pi->pi_ident);
    return(pi);
}
