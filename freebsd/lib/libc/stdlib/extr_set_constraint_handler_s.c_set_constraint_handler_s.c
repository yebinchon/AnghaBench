
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * constraint_handler_t ;


 scalar_t__ __isthreaded ;
 int ** _ch ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 int ch_lock ;
 int free (int **) ;
 int ** malloc (int) ;

constraint_handler_t
set_constraint_handler_s(constraint_handler_t handler)
{
 constraint_handler_t *new, *old, ret;

 new = malloc(sizeof(constraint_handler_t));
 if (new == ((void*)0))
  return (((void*)0));
 *new = handler;
 if (__isthreaded)
  _pthread_mutex_lock(&ch_lock);
 old = _ch;
 _ch = new;
 if (__isthreaded)
  _pthread_mutex_unlock(&ch_lock);
 if (old == ((void*)0)) {
  ret = ((void*)0);
 } else {
  ret = *old;
  free(old);
 }
 return (ret);
}
