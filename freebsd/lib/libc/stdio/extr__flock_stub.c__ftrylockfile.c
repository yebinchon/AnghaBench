
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_3__ {scalar_t__ _fl_owner; int _fl_count; int _fl_mutex; } ;
typedef TYPE_1__ FILE ;


 scalar_t__ _pthread_mutex_trylock (int *) ;
 scalar_t__ _pthread_self () ;

int
_ftrylockfile(FILE *fp)
{
 pthread_t curthread = _pthread_self();
 int ret = 0;

 if (fp->_fl_owner == curthread)
  fp->_fl_count++;




 else if (_pthread_mutex_trylock(&fp->_fl_mutex) == 0) {
  fp->_fl_owner = curthread;
  fp->_fl_count = 1;
 }
 else
  ret = -1;
 return (ret);
}
