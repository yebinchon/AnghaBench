
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int iodev_read_1 (int) ;
 int iodev_read_2 (int) ;

__attribute__((used)) static uint16_t
x86bios_emu_inw(struct x86emu *emu, uint16_t port)
{
 uint16_t val;


 if (port >= 0x80 && port < 0x88)
  return (0);

 if ((port & 1) != 0) {
  val = iodev_read_1(port);
  val |= iodev_read_1(port + 1) << 8;
 } else

 val = iodev_read_2(port);

 return (val);
}
