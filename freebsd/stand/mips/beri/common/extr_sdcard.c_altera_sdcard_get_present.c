
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int ALTERA_SDCARD_ASR_CARDPRESENT ;
 int ALTERA_SDCARD_CSD_SIZE ;
 size_t ALTERA_SDCARD_CSD_STRUCTURE_BYTE ;
 int ALTERA_SDCARD_CSD_STRUCTURE_MASK ;
 int ALTERA_SDCARD_CSD_STRUCTURE_RSHIFT ;
 int altera_sdcard_read_asr () ;
 int altera_sdcard_read_csd (int *) ;
 int printf (char*,...) ;

int
altera_sdcard_get_present(void)
{
 uint16_t csd16[ALTERA_SDCARD_CSD_SIZE/sizeof(uint16_t)];
 uint8_t *csd8p = (uint8_t *)&csd16;
 uint8_t csd_structure;


 if (!(altera_sdcard_read_asr() & ALTERA_SDCARD_ASR_CARDPRESENT)) {
  printf("SD Card: not present\n");
  return (0);
 }


 altera_sdcard_read_csd(csd16);
 csd_structure = csd8p[ALTERA_SDCARD_CSD_STRUCTURE_BYTE];
 csd_structure &= ALTERA_SDCARD_CSD_STRUCTURE_MASK;
 csd_structure >>= ALTERA_SDCARD_CSD_STRUCTURE_RSHIFT;
 if (csd_structure != 0) {
  printf("SD Card: unrecognised csd %u\n", csd_structure);
  return (0);
 }

 return (1);
}
