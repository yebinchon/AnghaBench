
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ir_softc {scalar_t__ dcnt; unsigned char* buf; int dev; } ;


 scalar_t__ AW_IR_RAW_BUF_SIZE ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
aw_ir_buf_write(struct aw_ir_softc *sc, unsigned char data)
{

 if (sc->dcnt < AW_IR_RAW_BUF_SIZE)
  sc->buf[sc->dcnt++] = data;
 else
  if (bootverbose)
   device_printf(sc->dev, "IR RX Buffer Full!\n");
}
