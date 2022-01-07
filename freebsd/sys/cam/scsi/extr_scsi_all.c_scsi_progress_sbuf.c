
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sbuf {int dummy; } ;


 int SSD_SKS_PROGRESS_DENOM ;
 int sbuf_printf (struct sbuf*,char*,int,int,int) ;

void
scsi_progress_sbuf(struct sbuf *sb, uint16_t progress)
{
 sbuf_printf(sb, "Progress: %d%% (%d/%d) complete",
      (progress * 100) / SSD_SKS_PROGRESS_DENOM,
      progress, SSD_SKS_PROGRESS_DENOM);
}
