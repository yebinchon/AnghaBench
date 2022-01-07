
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long hpux_ncpus () ;
 long sysconf_ncpus () ;
 long sysctl_ncpus () ;

unsigned int
isc_os_ncpus(void) {
 long ncpus = 0;
 if (ncpus <= 0)
  ncpus = 1;

 return ((unsigned int)ncpus);
}
