
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_7__ {scalar_t__ cch_magic; int cch_flags; } ;
typedef TYPE_1__ cap_channel_t ;


 scalar_t__ CAP_CHANNEL_MAGIC ;
 int assert (int) ;
 TYPE_1__* cap_wrap (int,int ) ;
 int * cap_xfer_nvlist (TYPE_1__ const*,int *) ;
 int channel_nvlist_flags (TYPE_1__ const*) ;
 int close (int) ;
 int errno ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int nvlist_take_descriptor (int *,char*) ;

cap_channel_t *
cap_clone(const cap_channel_t *chan)
{
 cap_channel_t *newchan;
 nvlist_t *nvl;
 int newsock;

 assert(chan != ((void*)0));
 assert(chan->cch_magic == CAP_CHANNEL_MAGIC);

 nvl = nvlist_create(channel_nvlist_flags(chan));
 nvlist_add_string(nvl, "cmd", "clone");
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0))
  return (((void*)0));
 if (nvlist_get_number(nvl, "error") != 0) {
  errno = (int)nvlist_get_number(nvl, "error");
  nvlist_destroy(nvl);
  return (((void*)0));
 }
 newsock = nvlist_take_descriptor(nvl, "sock");
 nvlist_destroy(nvl);
 newchan = cap_wrap(newsock, chan->cch_flags);
 if (newchan == ((void*)0)) {
  int serrno;

  serrno = errno;
  close(newsock);
  errno = serrno;
 }

 return (newchan);
}
