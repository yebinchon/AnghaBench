
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
typedef char cpuset_t ;
struct TYPE_3__ {int cpusetsize; int * cpuset; } ;


 int EINVAL ;
 int ERANGE ;
 int MIN (size_t,int ) ;
 size_t _get_kern_cpuset_size () ;
 int memcpy (char*,int *,int ) ;
 int memset (char*,int,size_t) ;

int
_pthread_attr_getaffinity_np(const pthread_attr_t *pattr, size_t cpusetsize,
 cpuset_t *cpusetp)
{
 pthread_attr_t attr;
 int ret = 0;

 if (pattr == ((void*)0) || (attr = (*pattr)) == ((void*)0))
  ret = EINVAL;
 else {

  size_t kern_size = _get_kern_cpuset_size();
  if (cpusetsize < kern_size)
   return (ERANGE);
  if (attr->cpuset != ((void*)0))
   memcpy(cpusetp, attr->cpuset, MIN(cpusetsize,
      attr->cpusetsize));
  else
   memset(cpusetp, -1, kern_size);
  if (cpusetsize > kern_size)
   memset(((char *)cpusetp) + kern_size, 0,
    cpusetsize - kern_size);
 }
 return (ret);
}
