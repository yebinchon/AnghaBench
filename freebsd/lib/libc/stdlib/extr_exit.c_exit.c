
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cleanup () ;
 int __cxa_finalize (int *) ;
 int __cxa_thread_call_dtors () ;
 int _exit (int) ;
 int stub1 () ;

void
exit(int status)
{

 extern int _thread_autoinit_dummy_decl;

 _thread_autoinit_dummy_decl = 1;






 __cxa_thread_call_dtors();
 __cxa_finalize(((void*)0));
 if (__cleanup)
  (*__cleanup)();
 _exit(status);
}
