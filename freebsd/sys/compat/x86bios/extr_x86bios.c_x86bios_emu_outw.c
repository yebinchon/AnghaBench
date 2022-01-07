
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int iodev_write_1 (int,int) ;
 int iodev_write_2 (int,int) ;

__attribute__((used)) static void
x86bios_emu_outw(struct x86emu *emu, uint16_t port, uint16_t val)
{


 if (port >= 0x80 && port < 0x88)
  return;

 if ((port & 1) != 0) {
  iodev_write_1(port, val);
  iodev_write_1(port + 1, val >> 8);
 } else

 iodev_write_2(port, val);
}
