
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dwMajorVersion; } ;


 int initialize_action () ;
 TYPE_1__ osVer ;

unsigned int
isc_win32os_majorversion(void) {
 initialize_action();
 return ((unsigned int)osVer.dwMajorVersion);
}
