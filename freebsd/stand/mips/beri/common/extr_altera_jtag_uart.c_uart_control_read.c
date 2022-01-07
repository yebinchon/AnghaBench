
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ALTERA_JTAG_UART_CONTROL_OFF ;
 scalar_t__ CHERI_UART_BASE ;
 int mips_ioread_uint32le (int ) ;
 int mips_phys_to_uncached (scalar_t__) ;

__attribute__((used)) static inline uint32_t
uart_control_read(void)
{

 return (mips_ioread_uint32le(mips_phys_to_uncached(CHERI_UART_BASE +
     ALTERA_JTAG_UART_CONTROL_OFF)));
}
