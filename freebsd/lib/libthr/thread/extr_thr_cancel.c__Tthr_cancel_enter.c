
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _get_curthread () ;
 int _thr_cancel_enter2 (int ,int) ;

void
_Tthr_cancel_enter(int maycancel)
{
 _thr_cancel_enter2(_get_curthread(), maycancel);
}
