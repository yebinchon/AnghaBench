
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor ;
typedef char* uintmax_t ;
typedef char* uint8_t ;
struct smp_report_manuf_info_response {int sas_11_format; char* comp_revision; int vendor_specific; int comp_id; int comp_vendor; int crc; int revision; int product; int vendor; int expander_change_count; } ;
struct sbuf {int dummy; } ;
typedef int revision ;
typedef int product ;
typedef int comp_vendor ;


 int SMP_RMI_SAS11_FORMAT ;
 int cam_strvis (char*,int ,int,int) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 char* scsi_2btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;
 char* smp_yesno (int) ;

void
smp_report_manuf_info_sbuf(struct smp_report_manuf_info_response *response,
      int response_len, struct sbuf *sb)
{
 char vendor[16], product[48], revision[16];
 char comp_vendor[16];

 sbuf_printf(sb, "Report Manufacturer Information\n");
 sbuf_printf(sb, "Expander Change count: %d\n",
      scsi_2btoul(response->expander_change_count));
 sbuf_printf(sb, "SAS 1.1 Format: %s\n",
      smp_yesno(response->sas_11_format & SMP_RMI_SAS11_FORMAT));
 cam_strvis(vendor, response->vendor, sizeof(response->vendor),
     sizeof(vendor));
 cam_strvis(product, response->product, sizeof(response->product),
     sizeof(product));
 cam_strvis(revision, response->revision, sizeof(response->revision),
     sizeof(revision));
 sbuf_printf(sb, "<%s %s %s>\n", vendor, product, revision);

 if ((response->sas_11_format & SMP_RMI_SAS11_FORMAT) == 0) {
  uint8_t *curbyte;
  int line_start, line_cursor;

  sbuf_printf(sb, "Vendor Specific Data:\n");
  for (curbyte = (uint8_t *)&response->comp_vendor, line_start= 1,
       line_cursor = 0; curbyte < (uint8_t *)&response->crc;
       curbyte++, line_cursor++) {
   if (line_start != 0) {
    sbuf_printf(sb, "%08lx  ",
         (unsigned long)(curbyte -
         (uint8_t *)response));
    line_start = 0;
    line_cursor = 0;
   }
   sbuf_printf(sb, "%02x", *curbyte);

   if (line_cursor == 15) {
    sbuf_printf(sb, "\n");
    line_start = 1;
   } else
    sbuf_printf(sb, " %s", (line_cursor == 7) ?
         " " : "");
  }
  if (line_cursor != 16)
   sbuf_printf(sb, "\n");
  return;
 }

 cam_strvis(comp_vendor, response->comp_vendor,
     sizeof(response->comp_vendor), sizeof(comp_vendor));
 sbuf_printf(sb, "Component Vendor: %s\n", comp_vendor);
 sbuf_printf(sb, "Component ID: %#x\n", scsi_2btoul(response->comp_id));
 sbuf_printf(sb, "Component Revision: %#x\n", response->comp_revision);
 sbuf_printf(sb, "Vendor Specific: 0x%016jx\n",
      (uintmax_t)scsi_8btou64(response->vendor_specific));
}
