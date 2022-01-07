
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {struct crom_chunk* crom_root; struct crom_src* crom_src; struct crom_src_buf* crom_src_buf; } ;
struct crom_src_buf {int vendor; } ;
struct crom_src {int chunk_list; } ;
struct crom_chunk {int dummy; } ;


 int CSRKEY_NCAP ;
 int CSRKEY_VENDOR ;
 int CSRVAL_VENDOR_PRIVATE ;
 int STAILQ_INIT (int *) ;
 int bzero (struct crom_chunk*,int) ;
 int crom_add_chunk (struct crom_src*,int *,struct crom_chunk*,int ) ;
 int crom_add_entry (struct crom_chunk*,int ,int) ;
 int crom_add_simple_text (struct crom_src*,struct crom_chunk*,int *,char*) ;
 int fw_init_crom (struct fwohci_softc*) ;
 int printf (char*) ;

__attribute__((used)) static void
fw_reset_crom(struct fwohci_softc *sc)
{
 struct crom_src_buf *buf;
 struct crom_src *src;
 struct crom_chunk *root;

 printf("fw_reset\n");
 if (sc->crom_src_buf == ((void*)0))
  fw_init_crom(sc);

 buf = sc->crom_src_buf;
 src = sc->crom_src;
 root = sc->crom_root;

 STAILQ_INIT(&src->chunk_list);

 bzero(root, sizeof(struct crom_chunk));
 crom_add_chunk(src, ((void*)0), root, 0);
 crom_add_entry(root, CSRKEY_NCAP, 0x0083c0);

 crom_add_entry(root, CSRKEY_VENDOR, CSRVAL_VENDOR_PRIVATE);



 crom_add_simple_text(src, root, &buf->vendor, "FreeBSD Project");

}
