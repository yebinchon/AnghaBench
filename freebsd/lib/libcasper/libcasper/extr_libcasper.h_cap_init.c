
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cch_fd; } ;
typedef TYPE_1__ cap_channel_t ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static inline cap_channel_t *
cap_init(void)
{
 cap_channel_t *chan;

 chan = (cap_channel_t *)malloc(sizeof(*chan));
 if (chan != ((void*)0)) {
  chan->cch_fd = -1;
 }
 return (chan);
}
