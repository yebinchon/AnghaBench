
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _pthread_equal (int ,int ) ;
 int _pthread_self () ;
 int _thr_initial ;

int
_thr_main_np(void)
{

 if (!_thr_initial)
  return (-1);
 else
  return (_pthread_equal(_pthread_self(), _thr_initial) ? 1 : 0);
}
