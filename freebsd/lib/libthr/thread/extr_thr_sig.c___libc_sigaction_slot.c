
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usigaction {int dummy; } ;


 struct usigaction* _thr_sigact ;

__attribute__((used)) static inline struct usigaction *
__libc_sigaction_slot(int signo)
{

 return (&_thr_sigact[signo - 1]);
}
