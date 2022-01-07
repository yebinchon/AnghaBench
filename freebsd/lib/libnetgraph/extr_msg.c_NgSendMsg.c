
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typecookie; int token; int cmd; scalar_t__ cmdstr; int flags; int version; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef int msg ;


 int INT_MAX ;
 int NGF_ORIG ;
 int NG_CMDSTRSIZ ;
 int NG_VERSION ;
 scalar_t__ NgDeliverMsg (int,char const*,struct ng_mesg*,void const*,size_t) ;
 int atomic_fetch_add (int *,int) ;
 int gMsgId ;
 int memset (struct ng_mesg*,int ,int) ;
 int snprintf (char*,int ,char*,int) ;

int
NgSendMsg(int cs, const char *path,
   int cookie, int cmd, const void *args, size_t arglen)
{
 struct ng_mesg msg;


 memset(&msg, 0, sizeof(msg));
 msg.header.version = NG_VERSION;
 msg.header.typecookie = cookie;
 msg.header.token = atomic_fetch_add(&gMsgId, 1) & INT_MAX;
 msg.header.flags = NGF_ORIG;
 msg.header.cmd = cmd;
 snprintf((char *)msg.header.cmdstr, NG_CMDSTRSIZ, "cmd%d", cmd);


 if (NgDeliverMsg(cs, path, &msg, args, arglen) < 0)
  return (-1);
 return (msg.header.token);
}
