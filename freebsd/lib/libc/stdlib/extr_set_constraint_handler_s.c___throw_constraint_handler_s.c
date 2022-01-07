
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errno_t ;
typedef int (* constraint_handler_t ) (char const*,int *,int ) ;


 scalar_t__ __isthreaded ;
 int _ch (char const*,int *,int ) ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 int ch_lock ;

void
__throw_constraint_handler_s(const char * restrict msg, errno_t error)
{
 constraint_handler_t ch;

 if (__isthreaded)
  _pthread_mutex_lock(&ch_lock);
 ch = _ch != ((void*)0) ? *_ch : ((void*)0);
 if (__isthreaded)
  _pthread_mutex_unlock(&ch_lock);
 if (ch != ((void*)0))
  ch(msg, ((void*)0), error);
}
