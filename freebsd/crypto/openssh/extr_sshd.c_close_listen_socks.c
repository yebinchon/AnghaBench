
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int * listen_socks ;
 int num_listen_socks ;

__attribute__((used)) static void
close_listen_socks(void)
{
 int i;

 for (i = 0; i < num_listen_socks; i++)
  close(listen_socks[i]);
 num_listen_socks = -1;
}
