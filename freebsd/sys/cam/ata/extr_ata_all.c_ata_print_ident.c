
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_params {int config; int satacapabilities; int version_major; } ;
typedef int sata ;
typedef int ata ;


 int ATA_PROTO_ATAPI ;
 int ATA_PROTO_CFA ;
 int ATA_SATA_GEN1 ;
 int ATA_SATA_GEN2 ;
 int ATA_SATA_GEN3 ;
 int ata_print_ident_short (struct ata_params*) ;
 int ata_version (int ) ;
 int printf (char*,char*,char*) ;
 int snprintf (char*,int,char*,...) ;

void
ata_print_ident(struct ata_params *ident_data)
{
 const char *proto;
 char ata[12], sata[12];

 ata_print_ident_short(ident_data);

 proto = (ident_data->config == ATA_PROTO_CFA) ? "CFA" :
  (ident_data->config & ATA_PROTO_ATAPI) ? "ATAPI" : "ATA";
 if (ata_version(ident_data->version_major) == 0) {
  snprintf(ata, sizeof(ata), "%s", proto);
 } else if (ata_version(ident_data->version_major) <= 7) {
  snprintf(ata, sizeof(ata), "%s-%d", proto,
      ata_version(ident_data->version_major));
 } else if (ata_version(ident_data->version_major) == 8) {
  snprintf(ata, sizeof(ata), "%s8-ACS", proto);
 } else {
  snprintf(ata, sizeof(ata), "ACS-%d %s",
      ata_version(ident_data->version_major) - 7, proto);
 }
 if (ident_data->satacapabilities && ident_data->satacapabilities != 0xffff) {
  if (ident_data->satacapabilities & ATA_SATA_GEN3)
   snprintf(sata, sizeof(sata), " SATA 3.x");
  else if (ident_data->satacapabilities & ATA_SATA_GEN2)
   snprintf(sata, sizeof(sata), " SATA 2.x");
  else if (ident_data->satacapabilities & ATA_SATA_GEN1)
   snprintf(sata, sizeof(sata), " SATA 1.x");
  else
   snprintf(sata, sizeof(sata), " SATA");
 } else
  sata[0] = 0;
 printf(" %s%s device\n", ata, sata);
}
