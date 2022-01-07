
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ipu3sc_softc {scalar_t__ vbase; int pbase; } ;


 int M_DEVBUF ;
 int M_ZERO ;
 int PAGE_SIZE ;
 scalar_t__ contigmalloc (size_t,int ,int ,int ,int ,int ,int ) ;
 int vtophys (scalar_t__) ;

__attribute__((used)) static int
ipu3_fb_malloc(struct ipu3sc_softc *sc, size_t size)
{

 sc->vbase = (uint32_t)contigmalloc(size, M_DEVBUF, M_ZERO, 0, ~0,
     PAGE_SIZE, 0);
 sc->pbase = vtophys(sc->vbase);

 return (0);
}
