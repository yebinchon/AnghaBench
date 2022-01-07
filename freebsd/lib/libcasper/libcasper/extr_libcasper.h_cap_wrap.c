
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cch_fd; int cch_flags; } ;
typedef TYPE_1__ cap_channel_t ;


 TYPE_1__* cap_init () ;

__attribute__((used)) static inline cap_channel_t *
cap_wrap(int sock, int flags)
{
 cap_channel_t *chan;

 chan = cap_init();
 if (chan != ((void*)0)) {
  chan->cch_fd = sock;
  chan->cch_flags = flags;
 }
 return (chan);
}
