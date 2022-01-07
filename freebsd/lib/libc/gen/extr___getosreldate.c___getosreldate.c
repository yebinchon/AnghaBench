
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int osreldate ;
typedef int osrel ;


 int AT_OSRELDATE ;
 int CTL_KERN ;
 int KERN_OSRELDATE ;
 int _elf_aux_info (int ,int*,int) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

int
__getosreldate(void)
{
 static int osreldate;
 size_t len;
 int oid[2];
 int error, osrel;

 if (osreldate != 0)
  return (osreldate);

 error = _elf_aux_info(AT_OSRELDATE, &osreldate, sizeof(osreldate));
 if (error == 0 && osreldate != 0)
  return (osreldate);

 oid[0] = CTL_KERN;
 oid[1] = KERN_OSRELDATE;
 osrel = 0;
 len = sizeof(osrel);
 error = sysctl(oid, 2, &osrel, &len, ((void*)0), 0);
 if (error == 0 && osrel > 0 && len == sizeof(osrel))
  osreldate = osrel;
 return (osreldate);
}
