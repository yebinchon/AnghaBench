
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cch_pd; } ;
typedef TYPE_1__ cap_channel_t ;


 int fd_is_valid (int) ;

__attribute__((used)) static bool
cap_add_pd(cap_channel_t *chan, int pd)
{

 if (!fd_is_valid(pd))
  return (0);
 chan->cch_pd = pd;
 return (1);
}
