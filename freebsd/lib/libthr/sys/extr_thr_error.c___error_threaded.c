
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int error; } ;


 struct pthread* _get_curthread () ;
 struct pthread* _thr_initial ;
 int errno ;

int *
__error_threaded(void)
{
 struct pthread *curthread;

 if (_thr_initial != ((void*)0)) {
  curthread = _get_curthread();
  if (curthread != ((void*)0) && curthread != _thr_initial)
   return (&curthread->error);
 }
 return (&errno);
}
