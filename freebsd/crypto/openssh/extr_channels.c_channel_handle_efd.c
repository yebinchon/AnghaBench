
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
typedef int fd_set ;
struct TYPE_5__ {int efd; scalar_t__ extended_usage; } ;
typedef TYPE_1__ Channel ;


 scalar_t__ CHAN_EXTENDED_IGNORE ;
 scalar_t__ CHAN_EXTENDED_READ ;
 scalar_t__ CHAN_EXTENDED_WRITE ;
 int channel_handle_efd_read (struct ssh*,TYPE_1__*,int *,int *) ;
 int channel_handle_efd_write (struct ssh*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static int
channel_handle_efd(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
 if (c->efd == -1)
  return 1;



 if (c->extended_usage == CHAN_EXTENDED_WRITE)
  return channel_handle_efd_write(ssh, c, readset, writeset);
 else if (c->extended_usage == CHAN_EXTENDED_READ ||
     c->extended_usage == CHAN_EXTENDED_IGNORE)
  return channel_handle_efd_read(ssh, c, readset, writeset);

 return 1;
}
