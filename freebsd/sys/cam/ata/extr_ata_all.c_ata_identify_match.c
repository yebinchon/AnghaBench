
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_inquiry_pattern {int revision; int product; } ;
struct ata_params {int revision; int model; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ cam_strmatch (int ,int ,int) ;

int
ata_identify_match(caddr_t identbuffer, caddr_t table_entry)
{
 struct scsi_inquiry_pattern *entry;
 struct ata_params *ident;

 entry = (struct scsi_inquiry_pattern *)table_entry;
 ident = (struct ata_params *)identbuffer;

 if ((cam_strmatch(ident->model, entry->product,
     sizeof(ident->model)) == 0)
  && (cam_strmatch(ident->revision, entry->revision,
     sizeof(ident->revision)) == 0)) {
  return (0);
 }
        return (-1);
}
