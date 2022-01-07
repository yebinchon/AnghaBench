
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int nvlist_t ;
typedef int cap_channel_t ;


 int do_sysctl (int *,int *,void*,size_t*,void const*,size_t) ;
 int nvlist_add_binary (int *,char*,int const*,size_t) ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;

int
cap_sysctl(cap_channel_t *chan, const int *name, u_int namelen, void *oldp,
    size_t *oldlenp, const void *newp, size_t newlen)
{
 nvlist_t *req;

 req = nvlist_create(0);
 nvlist_add_string(req, "cmd", "sysctl");
 nvlist_add_binary(req, "mib", name, (size_t)namelen * sizeof(int));
 return (do_sysctl(chan, req, oldp, oldlenp, newp, newlen));
}
