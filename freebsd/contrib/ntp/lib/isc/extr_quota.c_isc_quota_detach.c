
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_quota_t ;


 int INSIST (int) ;
 int isc_quota_release (int *) ;

void
isc_quota_detach(isc_quota_t **p)
{
 INSIST(p != ((void*)0) && *p != ((void*)0));
 isc_quota_release(*p);
 *p = ((void*)0);
}
