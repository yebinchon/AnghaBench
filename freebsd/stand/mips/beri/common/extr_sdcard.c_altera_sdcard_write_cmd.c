
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ALTERA_SDCARD_OFF_CMD ;
 int altera_sdcard_write_uint16 (int ,int ) ;

__attribute__((used)) static __inline void
altera_sdcard_write_cmd(uint16_t cmd)
{

 altera_sdcard_write_uint16(ALTERA_SDCARD_OFF_CMD, cmd);
}
