
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int iodev_read_1 (int) ;
 int iodev_read_2 (int) ;
 int iodev_read_4 (int) ;

__attribute__((used)) static uint32_t
x86bios_emu_inl(struct x86emu *emu, uint16_t port)
{
 uint32_t val;


 if (port >= 0x80 && port < 0x88)
  return (0);

 if ((port & 1) != 0) {
  val = iodev_read_1(port);
  val |= iodev_read_2(port + 1) << 8;
  val |= iodev_read_1(port + 3) << 24;
 } else if ((port & 2) != 0) {
  val = iodev_read_2(port);
  val |= iodev_read_2(port + 2) << 16;
 } else

 val = iodev_read_4(port);

 return (val);
}
