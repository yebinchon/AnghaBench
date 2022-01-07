
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct sbuf {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,int) ;

void
scsi_fru_sbuf(struct sbuf *sb, uint64_t fru)
{
 sbuf_printf(sb, "Field Replaceable Unit: %d", (int)fru);
}
