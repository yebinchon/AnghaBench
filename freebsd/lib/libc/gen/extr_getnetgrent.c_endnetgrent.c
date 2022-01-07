
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSDB_NETGROUP ;
 int _nsdispatch (int *,int ,int ,char*,int ) ;
 int defaultsrc ;
 int endnetgrent_dtab ;

void
endnetgrent(void)
{

 (void)_nsdispatch(((void*)0), endnetgrent_dtab, NSDB_NETGROUP, "endnetgrent",
     defaultsrc);
}
