
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _funlockfile (int *) ;

void
__stdio_cancel_cleanup(void * arg)
{

 if (arg != ((void*)0))
  _funlockfile((FILE *)arg);
}
