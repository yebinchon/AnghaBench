
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int iodev_write_1 (int,int ) ;

__attribute__((used)) static void
x86bios_emu_outb(struct x86emu *emu, uint16_t port, uint8_t val)
{


 if (port == 0xb2)
  return;
 if (port >= 0x80 && port < 0x88)
  return;


 iodev_write_1(port, val);
}
