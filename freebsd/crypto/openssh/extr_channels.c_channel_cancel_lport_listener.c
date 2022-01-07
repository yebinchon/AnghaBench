
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct ForwardOptions {int dummy; } ;
struct Forward {int listen_port; int listen_host; int * listen_path; } ;


 int channel_cancel_lport_listener_streamlocal (struct ssh*,int *) ;
 int channel_cancel_lport_listener_tcpip (struct ssh*,int ,int ,int,struct ForwardOptions*) ;

int
channel_cancel_lport_listener(struct ssh *ssh,
    struct Forward *fwd, int cport, struct ForwardOptions *fwd_opts)
{
 if (fwd->listen_path != ((void*)0)) {
  return channel_cancel_lport_listener_streamlocal(ssh,
      fwd->listen_path);
 } else {
  return channel_cancel_lport_listener_tcpip(ssh,
      fwd->listen_host, fwd->listen_port, cport, fwd_opts);
 }
}
