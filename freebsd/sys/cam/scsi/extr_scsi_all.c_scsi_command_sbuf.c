
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,int ) ;

void
scsi_command_sbuf(struct sbuf *sb, uint8_t *cdb, int cdb_len,
    struct scsi_inquiry_data *inq_data, uint64_t csi)
{
 sbuf_printf(sb, "Command Specific Info: %#jx", csi);
}
