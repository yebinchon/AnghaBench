
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct glue {int niobs; TYPE_4__* iobs; struct glue* next; } ;
typedef int mbstate_t ;
struct TYPE_8__ {scalar_t__ _size; int * _base; } ;
struct TYPE_7__ {scalar_t__ _size; int * _base; } ;
struct TYPE_6__ {scalar_t__ _size; int * _base; } ;
struct TYPE_9__ {int _flags; int _file; scalar_t__ _flags2; int _mbstate; scalar_t__ _orientation; TYPE_3__ _lb; TYPE_2__ _ub; scalar_t__ _lbfsize; TYPE_1__ _bf; scalar_t__ _r; scalar_t__ _w; int * _p; } ;
typedef TYPE_4__ FILE ;


 int NDYNAMIC ;
 int SET_GLUE_PTR (struct glue*,struct glue*) ;
 int STDIO_THREAD_LOCK () ;
 int STDIO_THREAD_UNLOCK () ;
 int __sdidinit ;
 struct glue __sglue ;
 int __sinit () ;
 struct glue* lastglue ;
 int memset (int *,int ,int) ;
 struct glue* moreglue (int ) ;

FILE *
__sfp(void)
{
 FILE *fp;
 int n;
 struct glue *g;

 if (!__sdidinit)
  __sinit();



 STDIO_THREAD_LOCK();
 for (g = &__sglue; g != ((void*)0); g = g->next) {
  for (fp = g->iobs, n = g->niobs; --n >= 0; fp++)
   if (fp->_flags == 0)
    goto found;
 }
 STDIO_THREAD_UNLOCK();
 if ((g = moreglue(NDYNAMIC)) == ((void*)0))
  return (((void*)0));
 STDIO_THREAD_LOCK();
 SET_GLUE_PTR(lastglue->next, g);
 lastglue = g;
 fp = g->iobs;
found:
 fp->_flags = 1;
 STDIO_THREAD_UNLOCK();
 fp->_p = ((void*)0);
 fp->_w = 0;
 fp->_r = 0;
 fp->_bf._base = ((void*)0);
 fp->_bf._size = 0;
 fp->_lbfsize = 0;
 fp->_file = -1;

 fp->_ub._base = ((void*)0);
 fp->_ub._size = 0;
 fp->_lb._base = ((void*)0);
 fp->_lb._size = 0;

 fp->_orientation = 0;
 memset(&fp->_mbstate, 0, sizeof(mbstate_t));
 fp->_flags2 = 0;
 return (fp);
}
