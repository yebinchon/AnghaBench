
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int * cap_xfer_nvlist (int *,int *) ;
 int nvlist_add_number (int *,char*,int) ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_get_number (int *,char*) ;

int
cap_setlogmask(cap_channel_t *chan, int maskpri)
{
 nvlist_t *nvl;
 int omask;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", "setlogmask");
 nvlist_add_number(nvl, "maskpri", maskpri);
 nvl = cap_xfer_nvlist(chan, nvl);
 omask = nvlist_get_number(nvl, "omask");

 nvlist_destroy(nvl);

 return (omask);
}
