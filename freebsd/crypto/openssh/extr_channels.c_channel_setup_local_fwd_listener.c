
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct ForwardOptions {int dummy; } ;
struct Forward {int * listen_path; } ;


 int SSH_CHANNEL_PORT_LISTENER ;
 int SSH_CHANNEL_UNIX_LISTENER ;
 int channel_setup_fwd_listener_streamlocal (struct ssh*,int ,struct Forward*,struct ForwardOptions*) ;
 int channel_setup_fwd_listener_tcpip (struct ssh*,int ,struct Forward*,int *,struct ForwardOptions*) ;

int
channel_setup_local_fwd_listener(struct ssh *ssh,
    struct Forward *fwd, struct ForwardOptions *fwd_opts)
{
 if (fwd->listen_path != ((void*)0)) {
  return channel_setup_fwd_listener_streamlocal(ssh,
      SSH_CHANNEL_UNIX_LISTENER, fwd, fwd_opts);
 } else {
  return channel_setup_fwd_listener_tcpip(ssh,
      SSH_CHANNEL_PORT_LISTENER, fwd, ((void*)0), fwd_opts);
 }
}
