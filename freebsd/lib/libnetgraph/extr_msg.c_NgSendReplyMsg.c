
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ng_mesg {TYPE_1__ header; } ;


 int NGF_RESP ;
 int NgDeliverMsg (int,char const*,struct ng_mesg*,void const*,size_t) ;

int
NgSendReplyMsg(int cs, const char *path,
 const struct ng_mesg *msg, const void *args, size_t arglen)
{
 struct ng_mesg rep;


 rep = *msg;
 rep.header.flags = NGF_RESP;


 return (NgDeliverMsg(cs, path, &rep, args, arglen));
}
