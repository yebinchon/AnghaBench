
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_MAXNAME ;
 int strlen (char const*) ;
 int sysctl (int*,int,int*,size_t*,char const*,int ) ;

__attribute__((used)) static int
name2oid(const char *name, int *oidp)
{
 int oid[2];
 int i;
 size_t j;

 oid[0] = 0;
 oid[1] = 3;

 j = CTL_MAXNAME * sizeof(int);
 i = sysctl(oid, 2, oidp, &j, name, strlen(name));
 if (i < 0)
  return (i);
 j /= sizeof(int);
 return (j);
}
