
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cch_flags; } ;
typedef TYPE_1__ cap_channel_t ;



__attribute__((used)) static inline int
cap_channel_flags(const cap_channel_t *chan)
{

 return (chan->cch_flags);
}
