
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_SYSCTL ;
 int CTL_SYSCTL_NAME2OID ;
 int strlen (char const*) ;
 int sysctl (int*,int,int*,size_t*,char const*,int ) ;

int
sysctlnametomib(const char *name, int *mibp, size_t *sizep)
{
 int oid[2];
 int error;

 oid[0] = CTL_SYSCTL;
 oid[1] = CTL_SYSCTL_NAME2OID;

 *sizep *= sizeof(int);
 error = sysctl(oid, 2, mibp, sizep, name, strlen(name));
 *sizep /= sizeof(int);
 return (error);
}
