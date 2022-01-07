
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ir_softc {scalar_t__ dcnt; } ;


 scalar_t__ AW_IR_RAW_BUF_SIZE ;

__attribute__((used)) static int
aw_ir_buf_full(struct aw_ir_softc *sc)
{

 return (sc->dcnt >= AW_IR_RAW_BUF_SIZE);
}
