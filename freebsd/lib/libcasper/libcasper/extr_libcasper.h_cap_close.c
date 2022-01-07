
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cch_fd; } ;
typedef TYPE_1__ cap_channel_t ;


 int close (scalar_t__) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static inline void
cap_close(cap_channel_t *chan)
{

 if (chan->cch_fd >= 0) {
  close(chan->cch_fd);
 }
 free(chan);
}
