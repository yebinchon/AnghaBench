
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union al_udma_desc {int dummy; } al_udma_desc ;
typedef int uint32_t ;


 int al_dbg (char*,...) ;

__attribute__((used)) static void al_dump_tx_desc(union al_udma_desc *tx_desc)
{
 uint32_t *ptr = (uint32_t *)tx_desc;
 al_dbg("eth tx desc:\n");
 al_dbg("0x%08x\n", *(ptr++));
 al_dbg("0x%08x\n", *(ptr++));
 al_dbg("0x%08x\n", *(ptr++));
 al_dbg("0x%08x\n", *(ptr++));
}
