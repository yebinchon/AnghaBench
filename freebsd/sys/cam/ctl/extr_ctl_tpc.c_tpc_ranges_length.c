
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_range_desc {int length; } ;
typedef int off_t ;


 scalar_t__ scsi_4btoul (int ) ;

__attribute__((used)) static off_t
tpc_ranges_length(struct scsi_range_desc *range, int nrange)
{
 off_t length = 0;
 int r;

 for (r = 0; r < nrange; r++)
  length += scsi_4btoul(range[r].length);
 return (length);
}
