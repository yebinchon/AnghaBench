
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10fb_softc {int fbsize; int vaddr; } ;


 int kmem_free (int ,int ) ;

__attribute__((used)) static void
a10fb_freefb(struct a10fb_softc *sc)
{
 kmem_free(sc->vaddr, sc->fbsize);
}
