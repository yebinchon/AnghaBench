
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSDB_NETGROUP ;
 int _nsdispatch (int *,int ,int ,char*,int ,char const*) ;
 int defaultsrc ;
 int setnetgrent_dtab ;

void
setnetgrent(const char *netgroup)
{

 (void)_nsdispatch(((void*)0), setnetgrent_dtab, NSDB_NETGROUP, "setnetgrent",
     defaultsrc, netgroup);
}
