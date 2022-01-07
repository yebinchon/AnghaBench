
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cch_magic; int cch_pd; int cch_sock; } ;
typedef TYPE_1__ cap_channel_t ;


 scalar_t__ CAP_CHANNEL_MAGIC ;
 int assert (int) ;
 int close (int) ;
 int free (TYPE_1__*) ;

void
cap_close(cap_channel_t *chan)
{

 assert(chan != ((void*)0));
 assert(chan->cch_magic == CAP_CHANNEL_MAGIC);

 chan->cch_magic = 0;
 if (chan->cch_pd != -1)
  close(chan->cch_pd);
 close(chan->cch_sock);
 free(chan);
}
