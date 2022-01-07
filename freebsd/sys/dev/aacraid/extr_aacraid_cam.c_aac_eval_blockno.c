
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int64_t ;
struct scsi_rw_6 {int addr; } ;
struct scsi_rw_16 {int addr; } ;
struct scsi_rw_12 {int addr; } ;
struct scsi_rw_10 {int addr; } ;
 int scsi_3btoul (int ) ;
 int scsi_4btoul (int ) ;
 int scsi_8btou64 (int ) ;

__attribute__((used)) static u_int64_t
aac_eval_blockno(u_int8_t *cmdp)
{
 u_int64_t blockno;

 switch (cmdp[0]) {
 case 132:
 case 128:
  blockno = scsi_3btoul(((struct scsi_rw_6 *)cmdp)->addr);
  break;
 case 135:
 case 131:
  blockno = scsi_4btoul(((struct scsi_rw_10 *)cmdp)->addr);
  break;
 case 134:
 case 130:
  blockno = scsi_4btoul(((struct scsi_rw_12 *)cmdp)->addr);
  break;
 case 133:
 case 129:
  blockno = scsi_8btou64(((struct scsi_rw_16 *)cmdp)->addr);
  break;
 default:
  blockno = 0;
  break;
 }
 return(blockno);
}
