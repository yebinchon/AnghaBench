
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_OSRELDATE ;
 int atoi (char*) ;
 char* getenv (char*) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

int
getosreldate(void)
{
 int mib[2];
 size_t size;
 int value;
 char *temp;

 if ((temp = getenv("OSVERSION"))) {
  value = atoi(temp);
  return (value);
 }

 mib[0] = CTL_KERN;
 mib[1] = KERN_OSRELDATE;
 size = sizeof value;
 if (sysctl(mib, 2, &value, &size, ((void*)0), 0) == -1)
  return (-1);
 return (value);
}
