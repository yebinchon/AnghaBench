
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int initialize_action () ;
 unsigned int isc_win32os_majorversion () ;
 unsigned int isc_win32os_minorversion () ;
 unsigned int isc_win32os_servicepackmajor () ;
 unsigned int isc_win32os_servicepackminor () ;

int
isc_win32os_versioncheck(unsigned int major, unsigned int minor,
       unsigned int spmajor, unsigned int spminor) {

 initialize_action();

 if (major < isc_win32os_majorversion())
  return (1);
 if (major > isc_win32os_majorversion())
  return (-1);
 if (minor < isc_win32os_minorversion())
  return (1);
 if (minor > isc_win32os_minorversion())
  return (-1);
 if (spmajor < isc_win32os_servicepackmajor())
  return (1);
 if (spmajor > isc_win32os_servicepackmajor())
  return (-1);
 if (spminor < isc_win32os_servicepackminor())
  return (1);
 if (spminor > isc_win32os_servicepackminor())
  return (-1);


 return (0);
}
