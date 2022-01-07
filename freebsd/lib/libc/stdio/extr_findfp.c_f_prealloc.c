
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glue {struct glue* next; scalar_t__ niobs; } ;


 int FOPEN_MAX ;
 int SET_GLUE_PTR (struct glue*,struct glue*) ;
 int STDIO_THREAD_LOCK () ;
 int STDIO_THREAD_UNLOCK () ;
 struct glue __sglue ;
 int getdtablesize () ;
 struct glue* lastglue ;
 struct glue* moreglue (int) ;

void
f_prealloc(void)
{
 struct glue *g;
 int n;

 n = getdtablesize() - FOPEN_MAX + 20;





 for (g = &__sglue; (n -= g->niobs) > 0 && g->next; g = g->next)
            ;
 if ((n > 0) && ((g = moreglue(n)) != ((void*)0))) {
  STDIO_THREAD_LOCK();
  SET_GLUE_PTR(lastglue->next, g);
  lastglue = g;
  STDIO_THREAD_UNLOCK();
 }
}
