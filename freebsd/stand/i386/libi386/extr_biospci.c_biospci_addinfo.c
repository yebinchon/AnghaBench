
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnpinfo {int pi_desc; } ;
struct pci_subclass {char* ps_name; } ;
struct pci_progif {char* pi_name; } ;
struct pci_class {char* pc_name; } ;


 int pnp_addident (struct pnpinfo*,char*) ;
 int pnp_addinfo (struct pnpinfo*) ;
 struct pnpinfo* pnp_allocinfo () ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strdup (char*) ;

__attribute__((used)) static void
biospci_addinfo(int devid, struct pci_class *pc, struct pci_subclass *psc, struct pci_progif *ppi)
{
    struct pnpinfo *pi;
    char desc[80];



    desc[0] = 0;
    if (ppi->pi_name != ((void*)0)) {
 strcat(desc, ppi->pi_name);
 strcat(desc, " ");
    }
    if (psc->ps_name != ((void*)0)) {
 strcat(desc, psc->ps_name);
 strcat(desc, " ");
    }
    if (pc->pc_name != ((void*)0))
 strcat(desc, pc->pc_name);

    pi = pnp_allocinfo();
    pi->pi_desc = strdup(desc);
    sprintf(desc,"0x%08x", devid);
    pnp_addident(pi, desc);
    pnp_addinfo(pi);
}
