
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {struct netconfig* nc_lookups; struct netconfig* nc_netid; } ;


 int free (struct netconfig*) ;

void
freenetconfigent(struct netconfig *netconfigp)
{
    if (netconfigp != ((void*)0)) {
 free(netconfigp->nc_netid);
 free(netconfigp->nc_lookups);
 free(netconfigp);
    }
    return;
}
