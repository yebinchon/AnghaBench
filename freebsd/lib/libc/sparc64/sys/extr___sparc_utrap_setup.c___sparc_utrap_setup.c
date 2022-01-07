
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPARC_UTRAP_INSTALL ;
 int sysarch (int ,void*) ;
 int uia ;

void
__sparc_utrap_setup(void)
{

 sysarch(SPARC_UTRAP_INSTALL, (void *)&uia);
}
