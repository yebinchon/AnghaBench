
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AW_MMC_INT_CMD_BUSY ;
 int AW_MMC_INT_DATA_CRC_ERR ;
 int AW_MMC_INT_DATA_END_BIT_ERR ;
 int AW_MMC_INT_DATA_START_ERR ;
 int AW_MMC_INT_FIFO_RUN_ERR ;
 int AW_MMC_INT_RESP_CRC_ERR ;
 int AW_MMC_INT_RESP_ERR ;
 int AW_MMC_INT_RESP_TIMEOUT ;
 int printf (char*) ;

__attribute__((used)) static void
aw_mmc_print_error(uint32_t err)
{
 if(err & AW_MMC_INT_RESP_ERR)
  printf("AW_MMC_INT_RESP_ERR ");
 if (err & AW_MMC_INT_RESP_CRC_ERR)
  printf("AW_MMC_INT_RESP_CRC_ERR ");
 if (err & AW_MMC_INT_DATA_CRC_ERR)
  printf("AW_MMC_INT_DATA_CRC_ERR ");
 if (err & AW_MMC_INT_RESP_TIMEOUT)
  printf("AW_MMC_INT_RESP_TIMEOUT ");
 if (err & AW_MMC_INT_FIFO_RUN_ERR)
  printf("AW_MMC_INT_FIFO_RUN_ERR ");
 if (err & AW_MMC_INT_CMD_BUSY)
  printf("AW_MMC_INT_CMD_BUSY ");
 if (err & AW_MMC_INT_DATA_START_ERR)
  printf("AW_MMC_INT_DATA_START_ERR ");
 if (err & AW_MMC_INT_DATA_END_BIT_ERR)
  printf("AW_MMC_INT_DATA_END_BIT_ERR");
 printf("\n");
}
