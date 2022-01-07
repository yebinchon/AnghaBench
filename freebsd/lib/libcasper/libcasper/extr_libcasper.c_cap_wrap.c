
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cch_sock; int cch_pd; int cch_flags; int cch_magic; } ;
typedef TYPE_1__ cap_channel_t ;


 int CAP_CHANNEL_MAGIC ;
 int CASPER_VALID_FLAGS ;
 int fd_is_valid (int) ;
 TYPE_1__* malloc (int) ;

cap_channel_t *
cap_wrap(int sock, int flags)
{
 cap_channel_t *chan;

 if (!fd_is_valid(sock))
  return (((void*)0));

 if ((flags & CASPER_VALID_FLAGS) != flags)
  return (((void*)0));

 chan = malloc(sizeof(*chan));
 if (chan != ((void*)0)) {
  chan->cch_sock = sock;
  chan->cch_pd = -1;
  chan->cch_flags = flags;
  chan->cch_magic = CAP_CHANNEL_MAGIC;
 }

 return (chan);
}
