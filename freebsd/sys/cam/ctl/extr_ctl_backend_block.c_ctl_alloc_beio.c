
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_be_block_softc {int beio_zone; } ;
struct ctl_be_block_io {struct ctl_be_block_softc* softc; } ;


 int M_WAITOK ;
 int M_ZERO ;
 struct ctl_be_block_io* uma_zalloc (int ,int) ;

__attribute__((used)) static struct ctl_be_block_io *
ctl_alloc_beio(struct ctl_be_block_softc *softc)
{
 struct ctl_be_block_io *beio;

 beio = uma_zalloc(softc->beio_zone, M_WAITOK | M_ZERO);
 beio->softc = softc;
 return (beio);
}
