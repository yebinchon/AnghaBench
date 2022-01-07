
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sbuf {int dummy; } ;


 int SSD_DESC_BLOCK_ILI ;
 int sbuf_printf (struct sbuf*,char*) ;

void
scsi_block_sbuf(struct sbuf *sb, uint8_t block_bits)
{

 sbuf_printf(sb, "Block Command Sense Data: ");
 if (block_bits & SSD_DESC_BLOCK_ILI)
  sbuf_printf(sb, "ILI");
}
