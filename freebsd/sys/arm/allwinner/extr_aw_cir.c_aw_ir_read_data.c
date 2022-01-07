
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ir_softc {int dummy; } ;


 int AW_IR_RXFIFO ;
 int READ (struct aw_ir_softc*,int ) ;

__attribute__((used)) static unsigned char
aw_ir_read_data(struct aw_ir_softc *sc)
{

 return (unsigned char)(READ(sc, AW_IR_RXFIFO) & 0xff);
}
