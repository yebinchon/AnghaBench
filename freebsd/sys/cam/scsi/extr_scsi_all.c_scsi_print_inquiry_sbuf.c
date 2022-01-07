
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 char* SCSI_REV_0 ;
 char* SCSI_REV_SPC ;
 char* SID_ANSI_REV (struct scsi_inquiry_data*) ;
 scalar_t__ SID_IS_REMOVABLE (struct scsi_inquiry_data*) ;
 int SID_QUAL (struct scsi_inquiry_data*) ;

 scalar_t__ SID_QUAL_IS_VENDOR_UNIQUE (struct scsi_inquiry_data*) ;



 int SID_TYPE (struct scsi_inquiry_data*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int scsi_print_inquiry_short_sbuf (struct sbuf*,struct scsi_inquiry_data*) ;

void
scsi_print_inquiry_sbuf(struct sbuf *sb, struct scsi_inquiry_data *inq_data)
{
 u_int8_t type;
 char *dtype, *qtype;

 type = SID_TYPE(inq_data);




 if (SID_QUAL_IS_VENDOR_UNIQUE(inq_data)) {
  qtype = " (vendor-unique qualifier)";
 } else {
  switch (SID_QUAL(inq_data)) {
  case 148:
   qtype = "";
   break;

  case 147:
   qtype = " (offline)";
   break;

  case 146:
   qtype = " (reserved qualifier)";
   break;
  default:
  case 149:
   qtype = " (LUN not supported)";
   break;
  }
 }

 switch (type) {
 case 141:
  dtype = "Direct Access";
  break;
 case 131:
  dtype = "Sequential Access";
  break;
 case 135:
  dtype = "Printer";
  break;
 case 134:
  dtype = "Processor";
  break;
 case 129:
  dtype = "WORM";
  break;
 case 144:
  dtype = "CD-ROM";
  break;
 case 132:
  dtype = "Scanner";
  break;
 case 137:
  dtype = "Optical";
  break;
 case 143:
  dtype = "Changer";
  break;
 case 142:
  dtype = "Communication";
  break;
 case 130:
  dtype = "Storage Array";
  break;
 case 140:
  dtype = "Enclosure Services";
  break;
 case 133:
  dtype = "Simplified Direct Access";
  break;
 case 138:
  dtype = "Optical Card Read/Write";
  break;
 case 136:
  dtype = "Object-Based Storage";
  break;
 case 145:
  dtype = "Automation/Drive Interface";
  break;
 case 128:
  dtype = "Host Managed Zoned Block";
  break;
 case 139:
  dtype = "Uninstalled";
  break;
 default:
  dtype = "unknown";
  break;
 }

 scsi_print_inquiry_short_sbuf(sb, inq_data);

 sbuf_printf(sb, "%s %s ", SID_IS_REMOVABLE(inq_data) ? "Removable" : "Fixed", dtype);

 if (SID_ANSI_REV(inq_data) == SCSI_REV_0)
  sbuf_printf(sb, "SCSI ");
 else if (SID_ANSI_REV(inq_data) <= SCSI_REV_SPC) {
  sbuf_printf(sb, "SCSI-%d ", SID_ANSI_REV(inq_data));
 } else {
  sbuf_printf(sb, "SPC-%d SCSI ", SID_ANSI_REV(inq_data) - 2);
 }
 sbuf_printf(sb, "device%s\n", qtype);
}
