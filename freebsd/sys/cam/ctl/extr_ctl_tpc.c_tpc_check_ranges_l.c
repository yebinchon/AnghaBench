
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct scsi_range_desc {int length; int lba; } ;


 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ scsi_4btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;

__attribute__((used)) static int
tpc_check_ranges_l(struct scsi_range_desc *range, int nrange, uint64_t maxlba,
    uint64_t *lba)
{
 uint64_t b1;
 uint32_t l1;
 int i;

 for (i = 0; i < nrange; i++) {
  b1 = scsi_8btou64(range[i].lba);
  l1 = scsi_4btoul(range[i].length);
  if (b1 + l1 < b1 || b1 + l1 > maxlba + 1) {
   *lba = MAX(b1, maxlba + 1);
   return (-1);
  }
 }
 return (0);
}
