
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int * cap_xfer_nvlist (int *,int *) ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;

void
cap_closelog(cap_channel_t *chan)
{
 nvlist_t *nvl;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", "closelog");
 nvl = cap_xfer_nvlist(chan, nvl);
 if (nvl == ((void*)0)) {
  return;
 }
 nvlist_destroy(nvl);
}
