
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_hdr {int dummy; } ;


 int bytes ;
 int close (scalar_t__) ;
 scalar_t__ fd ;
 int fflush (int *) ;
 int * file_addr ;
 int msg_send_resp (int,struct msg_hdr*,int ) ;
 int munmap (int *,int ) ;
 int printf (char*) ;

__attribute__((used)) static void server_close(int rs, struct msg_hdr *msg)
{
 printf("closing...");
 fflush(((void*)0));
 msg_send_resp(rs, msg, 0);

 if (file_addr) {
  munmap(file_addr, bytes);
  file_addr = ((void*)0);
 }

 if (fd > 0) {
  close(fd);
  fd = 0;
 }
 printf("done\n");
}
