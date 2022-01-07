
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int command; } ;
struct msg_write {TYPE_1__ hdr; int size; } ;
typedef int msg ;


 int CMD_WRITE ;
 int bytes ;
 int fflush (int *) ;
 int memset (struct msg_write*,int ,int) ;
 int printf (char*) ;
 int rsend (int,struct msg_write*,int,int ) ;

__attribute__((used)) static int client_start_write(int rs)
{
 struct msg_write msg;
 int ret;

 printf("transferring");
 fflush(((void*)0));
 memset(&msg, 0, sizeof msg);
 msg.hdr.command = CMD_WRITE;
 msg.hdr.len = sizeof(msg);
 msg.size = bytes;

 ret = rsend(rs, &msg, sizeof msg, 0);
 if (ret != msg.hdr.len)
  return ret;

 return 0;
}
