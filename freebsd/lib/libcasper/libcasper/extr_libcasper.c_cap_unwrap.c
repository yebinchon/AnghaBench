
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cch_magic; int cch_sock; int cch_pd; int cch_flags; } ;
typedef TYPE_1__ cap_channel_t ;


 scalar_t__ CAP_CHANNEL_MAGIC ;
 int assert (int) ;
 int close (int) ;
 int free (TYPE_1__*) ;

int
cap_unwrap(cap_channel_t *chan, int *flags)
{
 int sock;

 assert(chan != ((void*)0));
 assert(chan->cch_magic == CAP_CHANNEL_MAGIC);

 sock = chan->cch_sock;
 if (chan->cch_pd != -1)
  close(chan->cch_pd);
 if (flags != ((void*)0))
  *flags = chan->cch_flags;
 chan->cch_magic = 0;
 free(chan);

 return (sock);
}
