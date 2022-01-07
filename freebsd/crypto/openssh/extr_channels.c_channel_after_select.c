
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int fd_set ;


 int CHAN_POST ;
 int channel_handler (struct ssh*,int ,int *,int *,int *) ;

void
channel_after_select(struct ssh *ssh, fd_set *readset, fd_set *writeset)
{
 channel_handler(ssh, CHAN_POST, readset, writeset, ((void*)0));
}
