
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_3__ {scalar_t__ _fl_owner; int _fl_count; int _fl_mutex; } ;
typedef TYPE_1__ FILE ;


 int _pthread_mutex_unlock (int *) ;
 scalar_t__ _pthread_self () ;

void
_funlockfile(FILE *fp)
{
 pthread_t curthread = _pthread_self();




 if (fp->_fl_owner == curthread) {




  if (fp->_fl_count > 1)





   fp->_fl_count--;
  else {




   fp->_fl_count = 0;
   fp->_fl_owner = ((void*)0);
   _pthread_mutex_unlock(&fp->_fl_mutex);
  }
 }
}
