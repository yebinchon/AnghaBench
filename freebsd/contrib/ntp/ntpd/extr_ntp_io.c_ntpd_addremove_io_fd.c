
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_ARG (int) ;
 int init_socket_sig (int) ;
 int maintain_activefds (int,int) ;

__attribute__((used)) static void
ntpd_addremove_io_fd(
 int fd,
 int is_pipe,
 int remove_it
 )
{
 UNUSED_ARG(is_pipe);






 maintain_activefds(fd, remove_it);
}
