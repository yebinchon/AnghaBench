
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int lo; int hi; } ;
struct fwohci_softc {struct crom_src_buf* crom_src_buf; int * crom_root; struct crom_src* crom_src; TYPE_4__ eui; int speed; int maxrec; } ;
struct TYPE_6__ {int lo; int hi; } ;
struct TYPE_7__ {int irmc; int cmc; int isc; int bmc; int cyc_clk_acc; TYPE_2__ eui64; int link_spd; int generation; int max_rom; int max_rec; scalar_t__ pmc; int bus_name; } ;
struct TYPE_5__ {int info_len; } ;
struct crom_src {int chunk_list; TYPE_3__ businfo; TYPE_1__ hdr; } ;
struct crom_src_buf {int root; struct crom_src src; } ;


 int CSR_BUS_NAME_IEEE1394 ;
 int FW_GENERATION_CHANGEABLE ;
 int MAXROM_4 ;
 int STAILQ_INIT (int *) ;
 int bzero (struct crom_src*,int) ;
 scalar_t__ malloc (int) ;
 int printf (char*) ;

__attribute__((used)) static void
fw_init_crom(struct fwohci_softc *sc)
{
 struct crom_src *src;

 printf("fw_init_crom\n");
 sc->crom_src_buf = (struct crom_src_buf *)
  malloc(sizeof(struct crom_src_buf));
 if (sc->crom_src_buf == ((void*)0))
  return;

 src = &sc->crom_src_buf->src;
 bzero(src, sizeof(struct crom_src));


 src->hdr.info_len = 4;

 src->businfo.bus_name = CSR_BUS_NAME_IEEE1394;

 src->businfo.irmc = 1;
 src->businfo.cmc = 1;
 src->businfo.isc = 1;
 src->businfo.bmc = 1;
 src->businfo.pmc = 0;
 src->businfo.cyc_clk_acc = 100;
 src->businfo.max_rec = sc->maxrec;
 src->businfo.max_rom = MAXROM_4;

 src->businfo.generation = 2;
 src->businfo.link_spd = sc->speed;

 src->businfo.eui64.hi = sc->eui.hi;
 src->businfo.eui64.lo = sc->eui.lo;

 STAILQ_INIT(&src->chunk_list);

 sc->crom_src = src;
 sc->crom_root = &sc->crom_src_buf->root;
}
