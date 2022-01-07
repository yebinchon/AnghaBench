
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atexit_fn {int dummy; } ;
struct atexit {scalar_t__ ind; struct atexit_fn* fns; struct atexit* next; } ;


 scalar_t__ ATEXIT_SIZE ;
 int _MUTEX_LOCK (int *) ;
 int _MUTEX_UNLOCK (int *) ;
 struct atexit* __atexit ;
 int atexit_mutex ;
 int free (struct atexit*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static int
atexit_register(struct atexit_fn *fptr)
{
 static struct atexit __atexit0;
 struct atexit *p;

 _MUTEX_LOCK(&atexit_mutex);
 if ((p = __atexit) == ((void*)0))
  __atexit = p = &__atexit0;
 else while (p->ind >= ATEXIT_SIZE) {
  struct atexit *old__atexit;
  old__atexit = __atexit;
         _MUTEX_UNLOCK(&atexit_mutex);
  if ((p = (struct atexit *)malloc(sizeof(*p))) == ((void*)0))
   return (-1);
  _MUTEX_LOCK(&atexit_mutex);
  if (old__atexit != __atexit) {

   _MUTEX_UNLOCK(&atexit_mutex);
   free(p);
   _MUTEX_LOCK(&atexit_mutex);
   p = __atexit;
   continue;
  }
  p->ind = 0;
  p->next = __atexit;
  __atexit = p;
 }
 p->fns[p->ind++] = *fptr;
 _MUTEX_UNLOCK(&atexit_mutex);
 return 0;
}
