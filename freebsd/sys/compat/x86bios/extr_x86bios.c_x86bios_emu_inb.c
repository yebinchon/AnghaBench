
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct x86emu {int dummy; } ;


 int iodev_read_1 (int) ;

__attribute__((used)) static uint8_t
x86bios_emu_inb(struct x86emu *emu, uint16_t port)
{


 if (port == 0xb2)
  return (0);
 if (port >= 0x80 && port < 0x88)
  return (0);


 return (iodev_read_1(port));
}
