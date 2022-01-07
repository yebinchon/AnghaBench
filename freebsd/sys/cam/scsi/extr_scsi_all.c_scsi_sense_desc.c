
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sense_key_table_entry {char* desc; } ;
struct scsi_inquiry_data {int dummy; } ;
struct asc_table_entry {char* desc; } ;


 int fetchtableentries (int,int,int,struct scsi_inquiry_data*,struct sense_key_table_entry const**,struct asc_table_entry const**) ;

void
scsi_sense_desc(int sense_key, int asc, int ascq,
  struct scsi_inquiry_data *inq_data,
  const char **sense_key_desc, const char **asc_desc)
{
 const struct asc_table_entry *asc_entry;
 const struct sense_key_table_entry *sense_entry;

 fetchtableentries(sense_key, asc, ascq,
     inq_data,
     &sense_entry,
     &asc_entry);

 if (sense_entry != ((void*)0))
  *sense_key_desc = sense_entry->desc;
 else
  *sense_key_desc = "Invalid Sense Key";

 if (asc_entry != ((void*)0))
  *asc_desc = asc_entry->desc;
 else if (asc >= 0x80 && asc <= 0xff)
  *asc_desc = "Vendor Specific ASC";
 else if (ascq >= 0x80 && ascq <= 0xff)
  *asc_desc = "Vendor Specific ASCQ";
 else
  *asc_desc = "Reserved ASC/ASCQ pair";
}
