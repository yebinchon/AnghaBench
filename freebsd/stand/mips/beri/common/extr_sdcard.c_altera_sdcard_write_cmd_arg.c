
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ALTERA_SDCARD_OFF_CMD_ARG ;
 int altera_sdcard_write_uint32 (int ,int ) ;

__attribute__((used)) static __inline void
altera_sdcard_write_cmd_arg(uint32_t cmd_arg)
{

 altera_sdcard_write_uint32(ALTERA_SDCARD_OFF_CMD_ARG, cmd_arg);
}
