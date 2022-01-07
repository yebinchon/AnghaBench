
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int channel_nvlist_flags (int const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;

__attribute__((used)) static inline nvlist_t *
cap_xfer_nvlist(const cap_channel_t *chan, nvlist_t *nvl)
{

 nvlist_destroy(nvl);
 return (nvlist_create(channel_nvlist_flags(chan)));
}
