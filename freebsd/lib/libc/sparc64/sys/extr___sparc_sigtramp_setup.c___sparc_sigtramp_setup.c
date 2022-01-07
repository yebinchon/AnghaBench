
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPARC_SIGTRAMP_INSTALL ;
 int sia ;
 int sysarch (int ,void*) ;

void
__sparc_sigtramp_setup(void)
{

 sysarch(SPARC_SIGTRAMP_INSTALL, (void *)&sia);
}
