
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ckb_softc {int cols; int rows; int * keymap; } ;


 int KASSERT (int ,char*) ;

__attribute__((used)) static uint16_t
keymap_read(struct ckb_softc *sc, int col, int row)
{

 KASSERT(sc->keymap != ((void*)0), ("keymap_read: no keymap"));
 if (col >= 0 && col < sc->cols &&
     row >= 0 && row < sc->rows) {
  return sc->keymap[row * sc->cols + col];
 }

 return (0);
}
