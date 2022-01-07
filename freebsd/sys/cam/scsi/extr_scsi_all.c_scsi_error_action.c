
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int32_t ;
struct sense_key_table_entry {int action; } ;
struct scsi_inquiry_data {int dummy; } ;
struct ccb_scsiio {int dummy; } ;
struct asc_table_entry {int action; } ;
typedef int scsi_sense_action ;


 int EIO ;
 int SF_NO_PRINT ;
 int SF_NO_RECOVERY ;
 int SF_NO_RETRY ;
 int SF_PRINT_ALWAYS ;
 int SF_QUIET_IR ;
 int SF_RETRY_UA ;
 int SSD_DEFERRED_ERROR ;
 int SSD_DESC_DEFERRED_ERROR ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSD_KEY_RECOVERED_ERROR ;
 int SSD_KEY_UNIT_ATTENTION ;
 int SSQ_DECREMENT_COUNT ;
 int SSQ_MASK ;
 int SSQ_PRINT_SENSE ;
 int SSQ_UA ;
 int SS_ERRMASK ;
 int SS_FAIL ;
 int SS_MASK ;
 int SS_NOP ;
 int SS_RETRY ;
 int SS_START ;
 int fetchtableentries (int,int,int,struct scsi_inquiry_data*,struct sense_key_table_entry const**,struct asc_table_entry const**) ;
 int scsi_extract_sense_ccb (union ccb*,int*,int*,int*,int*) ;

scsi_sense_action
scsi_error_action(struct ccb_scsiio *csio, struct scsi_inquiry_data *inq_data,
    u_int32_t sense_flags)
{
 const struct asc_table_entry *asc_entry;
 const struct sense_key_table_entry *sense_entry;
 int error_code, sense_key, asc, ascq;
 scsi_sense_action action;

 if (!scsi_extract_sense_ccb((union ccb *)csio,
     &error_code, &sense_key, &asc, &ascq)) {
  action = SS_RETRY | SSQ_DECREMENT_COUNT | SSQ_PRINT_SENSE | EIO;
 } else if ((error_code == SSD_DEFERRED_ERROR)
  || (error_code == SSD_DESC_DEFERRED_ERROR)) {
  action = SS_RETRY|SSQ_DECREMENT_COUNT|SSQ_PRINT_SENSE;
 } else {
  fetchtableentries(sense_key, asc, ascq,
      inq_data,
      &sense_entry,
      &asc_entry);





  if (asc_entry != ((void*)0)
   && (asc != 0 || ascq != 0))
   action = asc_entry->action;
  else if (sense_entry != ((void*)0))
   action = sense_entry->action;
  else
   action = SS_RETRY|SSQ_DECREMENT_COUNT|SSQ_PRINT_SENSE;

  if (sense_key == SSD_KEY_RECOVERED_ERROR) {





   action &= ~(SS_MASK|SSQ_MASK|SS_ERRMASK);
   action |= SS_NOP|SSQ_PRINT_SENSE;
  } else if (sense_key == SSD_KEY_ILLEGAL_REQUEST) {
   if ((sense_flags & SF_QUIET_IR) != 0)
    action &= ~SSQ_PRINT_SENSE;
  } else if (sense_key == SSD_KEY_UNIT_ATTENTION) {
   if ((sense_flags & SF_RETRY_UA) != 0
    && (action & SS_MASK) == SS_FAIL) {
    action &= ~(SS_MASK|SSQ_MASK);
    action |= SS_RETRY|SSQ_DECREMENT_COUNT|
       SSQ_PRINT_SENSE;
   }
   action |= SSQ_UA;
  }
 }
 if ((action & SS_MASK) >= SS_START &&
     (sense_flags & SF_NO_RECOVERY)) {
  action &= ~SS_MASK;
  action |= SS_FAIL;
 } else if ((action & SS_MASK) == SS_RETRY &&
     (sense_flags & SF_NO_RETRY)) {
  action &= ~SS_MASK;
  action |= SS_FAIL;
 }
 if ((sense_flags & SF_PRINT_ALWAYS) != 0)
  action |= SSQ_PRINT_SENSE;
 else if ((sense_flags & SF_NO_PRINT) != 0)
  action &= ~SSQ_PRINT_SENSE;

 return (action);
}
