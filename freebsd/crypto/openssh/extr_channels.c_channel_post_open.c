
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int fd_set ;
typedef int Channel ;


 int channel_check_window (struct ssh*,int *) ;
 int channel_handle_efd (struct ssh*,int *,int *,int *) ;
 int channel_handle_rfd (struct ssh*,int *,int *,int *) ;
 int channel_handle_wfd (struct ssh*,int *,int *,int *) ;

__attribute__((used)) static void
channel_post_open(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 channel_handle_rfd(ssh, c, readset, writeset);
 channel_handle_wfd(ssh, c, readset, writeset);
 channel_handle_efd(ssh, c, readset, writeset);
 channel_check_window(ssh, c);
}
