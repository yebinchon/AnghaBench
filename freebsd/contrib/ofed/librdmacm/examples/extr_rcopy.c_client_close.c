
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_hdr {int len; int command; } ;


 int CMD_CLOSE ;
 int bytes ;
 int close (int ) ;
 int fd ;
 int fflush (int *) ;
 int file_addr ;
 int memset (struct msg_hdr*,int ,int) ;
 int msg_get_resp (int,struct msg_hdr*,int ) ;
 int munmap (int ,int ) ;
 int printf (char*) ;
 int rsend (int,char*,int,int ) ;

__attribute__((used)) static int client_close(int rs)
{
 struct msg_hdr msg;
 int ret;

 printf("closing...");
 fflush(((void*)0));
 memset(&msg, 0, sizeof msg);
 msg.command = CMD_CLOSE;
 msg.len = sizeof msg;
 ret = rsend(rs, (char *) &msg, msg.len, 0);
 if (ret != msg.len)
  goto out;

 ret = msg_get_resp(rs, &msg, CMD_CLOSE);
 if (ret)
  goto out;

 printf("done\n");
out:
 munmap(file_addr, bytes);
 close(fd);
 return ret;
}
