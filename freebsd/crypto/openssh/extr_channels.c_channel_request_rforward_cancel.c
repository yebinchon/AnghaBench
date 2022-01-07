
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct Forward {scalar_t__ allocated_port; scalar_t__ listen_port; int listen_host; int * listen_path; } ;


 int channel_request_rforward_cancel_streamlocal (struct ssh*,int *) ;
 int channel_request_rforward_cancel_tcpip (struct ssh*,int ,scalar_t__) ;

int
channel_request_rforward_cancel(struct ssh *ssh, struct Forward *fwd)
{
 if (fwd->listen_path != ((void*)0)) {
  return channel_request_rforward_cancel_streamlocal(ssh,
      fwd->listen_path);
 } else {
  return channel_request_rforward_cancel_tcpip(ssh,
      fwd->listen_host,
      fwd->listen_port ? fwd->listen_port : fwd->allocated_port);
 }
}
