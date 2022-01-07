
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECV_INIT ;
 int * addremove_io_fd ;
 int init_io_completion_port () ;
 int init_recvbuff (int ) ;
 int input_handler ;
 int interface_interval ;
 int ntpd_addremove_io_fd ;
 int set_signal (int ) ;

void
init_io(void)
{

 init_recvbuff(RECV_INIT);

 interface_interval = 300;
}
