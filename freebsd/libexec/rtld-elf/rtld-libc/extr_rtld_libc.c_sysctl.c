
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int const CTL_USER ;
 int __sys___sysctl (int const*,int ,void*,size_t*,void const*,size_t) ;
 int assert (int ) ;

int
sysctl(const int *name, u_int namelen, void *oldp, size_t *oldlenp,
    const void *newp, size_t newlen)
{
 int retval;

 assert(name[0] != CTL_USER && "Not supported inside rtld!");
 retval = __sys___sysctl(name, namelen, oldp, oldlenp, newp, newlen);
 return (retval);
}
