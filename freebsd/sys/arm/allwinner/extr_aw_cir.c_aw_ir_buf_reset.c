
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ir_softc {scalar_t__ dcnt; } ;



__attribute__((used)) static void
aw_ir_buf_reset(struct aw_ir_softc *sc)
{

 sc->dcnt = 0;
}
