
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct scsi_op_quirk_entry {int num_ops; struct op_table_entry* op_table; } ;
struct scsi_inquiry_data {int dummy; } ;
struct op_table_entry {int opcode; int opmask; char const* desc; } ;
typedef int * caddr_t ;


 int SID_TYPE (struct scsi_inquiry_data*) ;
 int T_DIRECT ;
 int T_NODEVICE ;
 int T_RBC ;
 int T_ZBC_HM ;
 int * cam_quirkmatch (int *,int *,int,int,int ) ;
 int nitems (struct op_table_entry*) ;
 int scsi_inquiry_match ;
 struct op_table_entry* scsi_op_codes ;
 struct op_table_entry* scsi_op_quirk_table ;

const char *
scsi_op_desc(u_int16_t opcode, struct scsi_inquiry_data *inq_data)
{
 caddr_t match;
 int i, j;
 u_int32_t opmask;
 u_int16_t pd_type;
 int num_ops[2];
 struct op_table_entry *table[2];
 int num_tables;






 if (inq_data == ((void*)0)) {
  pd_type = T_DIRECT;
  match = ((void*)0);
 } else {
  pd_type = SID_TYPE(inq_data);

  match = cam_quirkmatch((caddr_t)inq_data,
           (caddr_t)scsi_op_quirk_table,
           nitems(scsi_op_quirk_table),
           sizeof(*scsi_op_quirk_table),
           scsi_inquiry_match);
 }

 if (match != ((void*)0)) {
  table[0] = ((struct scsi_op_quirk_entry *)match)->op_table;
  num_ops[0] = ((struct scsi_op_quirk_entry *)match)->num_ops;
  table[1] = scsi_op_codes;
  num_ops[1] = nitems(scsi_op_codes);
  num_tables = 2;
 } else {




  if ((opcode > 0xBF) || ((opcode > 0x5F) && (opcode < 0x80)))
   return("Vendor Specific Command");

  table[0] = scsi_op_codes;
  num_ops[0] = nitems(scsi_op_codes);
  num_tables = 1;
 }


 if (pd_type == T_RBC)
  pd_type = T_DIRECT;




 if (pd_type == T_ZBC_HM)
  pd_type = T_DIRECT;


 if (pd_type == T_NODEVICE)
  pd_type = T_DIRECT;

 opmask = 1 << pd_type;

 for (j = 0; j < num_tables; j++) {
  for (i = 0;i < num_ops[j] && table[j][i].opcode <= opcode; i++){
   if ((table[j][i].opcode == opcode)
    && ((table[j][i].opmask & opmask) != 0))
    return(table[j][i].desc);
  }
 }





 return("Vendor Specific Command");

}
