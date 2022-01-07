
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {struct crom_chunk* crom_root; struct crom_src* crom_src; struct crom_src_buf* crom_src_buf; } ;
struct crom_src_buf {int unit; int ver; int spec; } ;
struct crom_src {int dummy; } ;
struct crom_chunk {int dummy; } ;


 int ADDR_HI (int ) ;
 int ADDR_LO (int ) ;
 int CROM_UDIR ;
 int CSRKEY_SPEC ;
 int CSRKEY_VER ;
 int CSRVAL_VENDOR_PRIVATE ;
 int DCONS_CSR_KEY_HI ;
 int DCONS_CSR_KEY_LO ;
 int DCONS_CSR_VAL_VER ;
 int bzero (int *,int) ;
 int crom_add_chunk (struct crom_src*,struct crom_chunk*,int *,int ) ;
 int crom_add_entry (int *,int ,int ) ;
 int crom_add_simple_text (struct crom_src*,int *,int *,char*) ;
 int dcons_paddr ;

__attribute__((used)) static void
dcons_crom(struct fwohci_softc *sc)
{
 struct crom_src_buf *buf;
 struct crom_src *src;
 struct crom_chunk *root;

 buf = sc->crom_src_buf;
 src = sc->crom_src;
 root = sc->crom_root;

 bzero(&buf->unit, sizeof(struct crom_chunk));

 crom_add_chunk(src, root, &buf->unit, CROM_UDIR);
 crom_add_entry(&buf->unit, CSRKEY_SPEC, CSRVAL_VENDOR_PRIVATE);
 crom_add_simple_text(src, &buf->unit, &buf->spec, "FreeBSD");
 crom_add_entry(&buf->unit, CSRKEY_VER, DCONS_CSR_VAL_VER);
 crom_add_simple_text(src, &buf->unit, &buf->ver, "dcons");
 crom_add_entry(&buf->unit, DCONS_CSR_KEY_HI, ADDR_HI(dcons_paddr));
 crom_add_entry(&buf->unit, DCONS_CSR_KEY_LO, ADDR_LO(dcons_paddr));
}
