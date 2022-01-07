
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long dwNumberOfProcessors; } ;


 TYPE_1__ SystemInfo ;
 int initialize_action () ;

unsigned int
isc_os_ncpus(void) {
 long ncpus = 1;
 initialize_action();
 ncpus = SystemInfo.dwNumberOfProcessors;
 if (ncpus <= 0)
  ncpus = 1;

 return ((unsigned int)ncpus);
}
