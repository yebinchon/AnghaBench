
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_3__ {scalar_t__ _fl_owner; int _fl_count; int _fl_mutex; } ;
typedef TYPE_1__ FILE ;


 int _pthread_mutex_lock (int *) ;
 scalar_t__ _pthread_self () ;

void
_flockfile(FILE *fp)
{
 pthread_t curthread = _pthread_self();

 if (fp->_fl_owner == curthread)
  fp->_fl_count++;
 else {




  _pthread_mutex_lock(&fp->_fl_mutex);
  fp->_fl_owner = curthread;
  fp->_fl_count = 1;
 }
}
