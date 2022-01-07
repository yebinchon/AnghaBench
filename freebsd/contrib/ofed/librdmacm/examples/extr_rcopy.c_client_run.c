
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_hdr {int dummy; } ;


 int CMD_WRITE ;
 int SHUT_RDWR ;
 size_t bytes ;
 int client_close (int) ;
 int client_connect () ;
 int client_open (int) ;
 int client_start_write (int) ;
 int end ;
 int fflush (int *) ;
 int file_addr ;
 int gettimeofday (int *,int *) ;
 int msg_get_resp (int,struct msg_hdr*,int ) ;
 int printf (char*) ;
 int rclose (int) ;
 size_t rsend (int,int ,size_t,int ) ;
 int rshutdown (int,int ) ;
 int show_perf () ;
 int start ;

__attribute__((used)) static int client_run(void)
{
 struct msg_hdr ack;
 int ret, rs;
 size_t len;

 rs = client_connect();
 if (rs < 0)
  return rs;

 ret = client_open(rs);
 if (ret)
  goto shutdown;

 ret = client_start_write(rs);
 if (ret)
  goto close;

 printf("...");
 fflush(((void*)0));
 gettimeofday(&start, ((void*)0));
 len = rsend(rs, file_addr, bytes, 0);
 if (len == bytes)
  ret = msg_get_resp(rs, &ack, CMD_WRITE);
 else
  ret = (int) len;

 gettimeofday(&end, ((void*)0));

close:
 client_close(rs);
shutdown:
 rshutdown(rs, SHUT_RDWR);
 rclose(rs);
 if (!ret)
  show_perf();
 return ret;
}
