
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSDB_GROUP ;
 int _nsdispatch (int *,int ,int ,char*,int ) ;
 int defaultsrc ;
 int endgrent_dtab ;

void
endgrent(void)
{
 (void)_nsdispatch(((void*)0), endgrent_dtab, NSDB_GROUP, "endgrent", defaultsrc);
}
