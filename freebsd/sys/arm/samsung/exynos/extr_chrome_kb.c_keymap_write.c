
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ckb_softc {int cols; int rows; int * keymap; } ;


 int KASSERT (int ,char*) ;

__attribute__((used)) static int
keymap_write(struct ckb_softc *sc, int col, int row, uint16_t key)
{

 KASSERT(sc->keymap != ((void*)0), ("keymap_write: no keymap"));
 if (col >= 0 && col < sc->cols &&
     row >= 0 && row < sc->rows) {
  sc->keymap[row * sc->cols + col] = key;
  return (0);
 }

 return (-1);
}
