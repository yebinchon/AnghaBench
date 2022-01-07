
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
typedef int cpuset_t ;
struct TYPE_3__ {size_t cpusetsize; int * cpuset; } ;


 int EINVAL ;
 int ERANGE ;
 size_t _get_kern_cpuset_size () ;
 int * calloc (int,size_t) ;
 int errno ;
 int free (int *) ;
 int memcpy (int *,int const*,size_t) ;

int
_pthread_attr_setaffinity_np(pthread_attr_t *pattr, size_t cpusetsize,
 const cpuset_t *cpusetp)
{
 pthread_attr_t attr;
 int ret;

 if (pattr == ((void*)0) || (attr = (*pattr)) == ((void*)0))
  ret = EINVAL;
 else {
  if (cpusetsize == 0 || cpusetp == ((void*)0)) {
   if (attr->cpuset != ((void*)0)) {
    free(attr->cpuset);
    attr->cpuset = ((void*)0);
    attr->cpusetsize = 0;
   }
   return (0);
  }
  size_t kern_size = _get_kern_cpuset_size();

  if (cpusetsize < kern_size)
   return (ERANGE);
  if (cpusetsize > kern_size) {

   size_t i;
   for (i = kern_size; i < cpusetsize; ++i) {
    if (((const char *)cpusetp)[i])
     return (EINVAL);
   }
  }
  if (attr->cpuset == ((void*)0)) {
   attr->cpuset = calloc(1, kern_size);
   if (attr->cpuset == ((void*)0))
    return (errno);
   attr->cpusetsize = kern_size;
  }
  memcpy(attr->cpuset, cpusetp, kern_size);
  ret = 0;
 }
 return (ret);
}
