
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ func_code; } ;
struct ccb_nvmeio {int cmd; TYPE_1__ ccb_h; } ;


 scalar_t__ XPT_NVME_ADMIN ;
 int nvme_cmd_sbuf (int *,struct sbuf*) ;
 int nvme_op_string (int *,int) ;
 int sbuf_printf (struct sbuf*,char*,int ) ;

int
nvme_command_sbuf(struct ccb_nvmeio *nvmeio, struct sbuf *sb)
{

 sbuf_printf(sb, "%s. NCB: ", nvme_op_string(&nvmeio->cmd,
     nvmeio->ccb_h.func_code == XPT_NVME_ADMIN));
 nvme_cmd_sbuf(&nvmeio->cmd, sb);
 return(0);
}
