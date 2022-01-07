
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int *) ;
 int packet_write_poll () ;

__attribute__((used)) static void
process_output(fd_set *writeset, int connection_out)
{

 if (FD_ISSET(connection_out, writeset))
  packet_write_poll();
}
