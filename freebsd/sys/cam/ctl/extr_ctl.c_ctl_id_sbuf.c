
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_vpd_id_descriptor {int id_type; int proto_codeset; int length; char** identifier; } ;
struct sbuf {int dummy; } ;
struct ctl_devid {int len; scalar_t__ data; } ;




 int SVPD_ID_CODESET_MASK ;


 int SVPD_ID_TYPE_MASK ;



 int sbuf_printf (struct sbuf*,char*,...) ;

__attribute__((used)) static void
ctl_id_sbuf(struct ctl_devid *id, struct sbuf *sb)
{
 struct scsi_vpd_id_descriptor *desc;
 int i;

 if (id == ((void*)0) || id->len < 4)
  return;
 desc = (struct scsi_vpd_id_descriptor *)id->data;
 switch (desc->id_type & SVPD_ID_TYPE_MASK) {
 case 128:
  sbuf_printf(sb, "t10.");
  break;
 case 131:
  sbuf_printf(sb, "eui.");
  break;
 case 130:
  sbuf_printf(sb, "naa.");
  break;
 case 129:
  break;
 }
 switch (desc->proto_codeset & SVPD_ID_CODESET_MASK) {
 case 133:
  for (i = 0; i < desc->length; i++)
   sbuf_printf(sb, "%02x", desc->identifier[i]);
  break;
 case 134:
  sbuf_printf(sb, "%.*s", (int)desc->length,
      (char *)desc->identifier);
  break;
 case 132:
  sbuf_printf(sb, "%s", (char *)desc->identifier);
  break;
 }
}
