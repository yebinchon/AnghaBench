
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int fd_set ;
typedef int Channel ;


 int channel_post_mux_client_read (struct ssh*,int *,int *,int *) ;
 int channel_post_mux_client_write (struct ssh*,int *,int *,int *) ;

__attribute__((used)) static void
channel_post_mux_client(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 channel_post_mux_client_read(ssh, c, readset, writeset);
 channel_post_mux_client_write(ssh, c, readset, writeset);
}
