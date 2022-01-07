
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {struct TYPE_4__* cpuset; } ;


 int EINVAL ;
 int free (TYPE_1__*) ;

int
_thr_attr_destroy(pthread_attr_t *attr)
{
 int ret;


 if (attr == ((void*)0) || *attr == ((void*)0))

  ret = EINVAL;
 else {
  if ((*attr)->cpuset != ((void*)0))
   free((*attr)->cpuset);

  free(*attr);





  *attr = ((void*)0);
  ret = 0;
 }
 return(ret);
}
