
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSDB_GROUP ;
 int _nsdispatch (int *,int ,int ,char*,int ,int) ;
 int defaultsrc ;
 int setgrent_dtab ;

int
setgroupent(int stayopen)
{
 (void)_nsdispatch(((void*)0), setgrent_dtab, NSDB_GROUP, "setgrent", defaultsrc,
     stayopen);
 return (1);
}
