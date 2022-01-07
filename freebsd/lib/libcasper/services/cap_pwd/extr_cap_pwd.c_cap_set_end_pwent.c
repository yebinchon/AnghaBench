
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int cap_xfer_nvlist (int *,int *) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int ) ;

__attribute__((used)) static void
cap_set_end_pwent(cap_channel_t *chan, const char *cmd)
{
 nvlist_t *nvl;

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "cmd", cmd);

 nvlist_destroy(cap_xfer_nvlist(chan, nvl));
}
