
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ccb_ataio {int cmd; } ;


 int ata_cmd_sbuf (int *,struct sbuf*) ;
 int ata_op_string (int *) ;
 int sbuf_printf (struct sbuf*,char*,int ) ;

int
ata_command_sbuf(struct ccb_ataio *ataio, struct sbuf *sb)
{

 sbuf_printf(sb, "%s. ACB: ",
     ata_op_string(&ataio->cmd));
 ata_cmd_sbuf(&ataio->cmd, sb);

 return(0);
}
