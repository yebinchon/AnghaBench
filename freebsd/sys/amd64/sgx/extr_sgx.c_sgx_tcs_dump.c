
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs {int gslimit; int fslimit; int ogsbasgx; int ofsbasgx; int oentry; int nssa; int cssa; int ossa; int flags; } ;
struct sgx_softc {int dummy; } ;


 int dprintf (char*,int ) ;

__attribute__((used)) static void
sgx_tcs_dump(struct sgx_softc *sc, struct tcs *t)
{

 dprintf("t->flags %lx\n", t->flags);
 dprintf("t->ossa %lx\n", t->ossa);
 dprintf("t->cssa %x\n", t->cssa);
 dprintf("t->nssa %x\n", t->nssa);
 dprintf("t->oentry %lx\n", t->oentry);
 dprintf("t->ofsbasgx %lx\n", t->ofsbasgx);
 dprintf("t->ogsbasgx %lx\n", t->ogsbasgx);
 dprintf("t->fslimit %x\n", t->fslimit);
 dprintf("t->gslimit %x\n", t->gslimit);
}
