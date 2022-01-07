
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ALTERA_SDCARD_OFF_RR1 ;
 int altera_sdcard_read_uint16 (int ) ;

__attribute__((used)) static __inline uint16_t
altera_sdcard_read_rr1(void)
{

 return (altera_sdcard_read_uint16(ALTERA_SDCARD_OFF_RR1));
}
