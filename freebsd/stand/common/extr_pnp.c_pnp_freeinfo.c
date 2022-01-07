
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnpinfo {struct pnpinfo* pi_argv; struct pnpinfo* pi_module; struct pnpinfo* pi_desc; struct pnpinfo* id_ident; int pi_ident; } ;
struct pnpident {struct pnpident* pi_argv; struct pnpident* pi_module; struct pnpident* pi_desc; struct pnpident* id_ident; int pi_ident; } ;


 int STAILQ_EMPTY (int *) ;
 struct pnpinfo* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int free (struct pnpinfo*) ;
 int id_link ;

void
pnp_freeinfo(struct pnpinfo *pi)
{
    struct pnpident *id;

    while (!STAILQ_EMPTY(&pi->pi_ident)) {
 id = STAILQ_FIRST(&pi->pi_ident);
 STAILQ_REMOVE_HEAD(&pi->pi_ident, id_link);
 free(id->id_ident);
 free(id);
    }
    if (pi->pi_desc)
 free(pi->pi_desc);
    if (pi->pi_module)
 free(pi->pi_module);
    if (pi->pi_argv)
 free(pi->pi_argv);
    free(pi);
}
