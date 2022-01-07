
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cch_fd; int cch_flags; } ;
typedef TYPE_1__ cap_channel_t ;


 TYPE_1__* cap_init () ;
 int dup (int) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static inline cap_channel_t *
cap_clone(const cap_channel_t *chan)
{
 cap_channel_t *newchan;

 newchan = cap_init();
 if (newchan == ((void*)0)) {
  return (((void*)0));
 }

 if (chan->cch_fd == -1) {
  newchan->cch_fd = -1;
 } else {
  newchan->cch_fd = dup(chan->cch_fd);
  if (newchan->cch_fd < 0) {
   free(newchan);
   newchan = ((void*)0);
  }
 }
 newchan->cch_flags = chan->cch_flags;

 return (newchan);
}
