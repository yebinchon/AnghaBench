
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohci_softc {scalar_t__ config_rom; TYPE_2__* crom_src_buf; } ;
struct TYPE_3__ {int generation; } ;
struct crom_src {TYPE_1__ businfo; } ;
struct TYPE_4__ {struct crom_src src; } ;


 int CROMSIZE ;
 scalar_t__ bcmp (void*,scalar_t__,int ) ;
 int bcopy (void*,void*,int ) ;
 int crom_load (struct crom_src*,int *,int ) ;
 int dcons_crom (struct fwohci_softc*) ;
 int free (void*) ;
 int fw_reset_crom (struct fwohci_softc*) ;
 void* malloc (int ) ;

void
fw_crom(struct fwohci_softc *sc)
{
 struct crom_src *src;
 void *newrom;

 fw_reset_crom(sc);
 dcons_crom(sc);

 newrom = malloc(CROMSIZE);
 src = &sc->crom_src_buf->src;
 crom_load(src, (uint32_t *)newrom, CROMSIZE);
 if (bcmp(newrom, sc->config_rom, CROMSIZE) != 0) {

  src->businfo.generation++;


  if (src->businfo.generation < 2)
   src->businfo.generation = 2;


  crom_load(src, (uint32_t *)newrom, CROMSIZE);
  bcopy(newrom, (void *)sc->config_rom, CROMSIZE);
 }
 free(newrom);
}
