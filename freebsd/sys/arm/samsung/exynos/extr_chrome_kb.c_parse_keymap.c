
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ckb_softc {int cols; int rows; int * keymap; } ;
typedef int pcell_t ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int keymap_write (struct ckb_softc*,int,int,int) ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static int
parse_keymap(struct ckb_softc *sc, pcell_t *keymap, size_t len)
{
 int i;

 sc->keymap = malloc(sc->cols * sc->rows * sizeof(sc->keymap[0]),
     M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc->keymap == ((void*)0)) {
  return (ENOMEM);
 }

 for (i = 0; i < len; i++) {







  keymap_write(sc, (keymap[i] >> 16) & 0xff,
      (keymap[i] >> 24) & 0xff,
      keymap[i] & 0xffff);
 }

 return (0);
}
