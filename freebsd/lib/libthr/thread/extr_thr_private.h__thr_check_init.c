
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _libpthread_init (int *) ;
 int * _thr_initial ;

__attribute__((used)) static inline void
_thr_check_init(void)
{
 if (_thr_initial == ((void*)0))
  _libpthread_init(((void*)0));
}
