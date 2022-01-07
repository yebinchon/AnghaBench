
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_hdr {int command; } ;





 int EINVAL ;
 int msg_recv_hdr (int,struct msg_hdr*) ;
 int msg_send_resp (int,struct msg_hdr*,int ) ;
 int server_close (int,struct msg_hdr*) ;
 int server_open (int,struct msg_hdr*) ;
 int server_write (int,struct msg_hdr*) ;

__attribute__((used)) static void server_process(int rs)
{
 struct msg_hdr msg;
 int ret;

 do {
  ret = msg_recv_hdr(rs, &msg);
  if (ret != sizeof msg)
   break;

  switch (msg.command) {
  case 129:
   ret = server_open(rs, &msg);
   break;
  case 130:
   server_close(rs, &msg);
   ret = 0;
   break;
  case 128:
   ret = server_write(rs, &msg);
   break;
  default:
   msg_send_resp(rs, &msg, EINVAL);
   ret = -1;
   break;
  }

 } while (!ret);
}
