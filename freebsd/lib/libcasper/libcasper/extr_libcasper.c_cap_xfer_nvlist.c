
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_4__ {scalar_t__ cch_magic; int cch_sock; } ;
typedef TYPE_1__ cap_channel_t ;


 scalar_t__ CAP_CHANNEL_MAGIC ;
 int assert (int) ;
 int channel_nvlist_flags (TYPE_1__ const*) ;
 int * nvlist_xfer (int ,int *,int ) ;

nvlist_t *
cap_xfer_nvlist(const cap_channel_t *chan, nvlist_t *nvl)
{

 assert(chan != ((void*)0));
 assert(chan->cch_magic == CAP_CHANNEL_MAGIC);

 return (nvlist_xfer(chan->cch_sock, nvl,
     channel_nvlist_flags(chan)));
}
