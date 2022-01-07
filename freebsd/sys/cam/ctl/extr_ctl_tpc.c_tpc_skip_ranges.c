
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_range_desc {int length; } ;
typedef scalar_t__ off_t ;


 scalar_t__ scsi_4btoul (int ) ;

__attribute__((used)) static int
tpc_skip_ranges(struct scsi_range_desc *range, int nrange, off_t skip,
    int *srange, off_t *soffset)
{
 off_t off;
 int r;

 r = 0;
 off = 0;
 while (r < nrange) {
  if (skip - off < scsi_4btoul(range[r].length)) {
   *srange = r;
   *soffset = skip - off;
   return (0);
  }
  off += scsi_4btoul(range[r].length);
  r++;
 }
 return (-1);
}
