
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvxlancmd {int vxlcmd_flags; } ;
struct afswtch {int dummy; } ;
typedef int cmd ;


 int VXLAN_CMD_FLAG_FLUSH_ALL ;
 int VXLAN_CMD_FLUSH ;
 int bzero (struct ifvxlancmd*,int) ;
 scalar_t__ do_cmd (int,int ,struct ifvxlancmd*,int,int) ;
 int err (int,char*) ;

__attribute__((used)) static void
setvxlan_flush(const char *val, int d, int s, const struct afswtch *afp)
{
 struct ifvxlancmd cmd;

 bzero(&cmd, sizeof(cmd));
 if (d != 0)
  cmd.vxlcmd_flags |= VXLAN_CMD_FLAG_FLUSH_ALL;

 if (do_cmd(s, VXLAN_CMD_FLUSH, &cmd, sizeof(cmd), 1) < 0)
  err(1, "VXLAN_CMD_FLUSH");
}
