
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _flags; } ;
typedef TYPE_1__ FILE ;


 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __SLBF ;
 int __SWR ;
 int __sflush (TYPE_1__*) ;

__attribute__((used)) static int
lflush(FILE *fp)
{
 int ret = 0;

 if ((fp->_flags & (__SLBF|__SWR)) == (__SLBF|__SWR)) {
  FLOCKFILE_CANCELSAFE(fp);
  ret = __sflush(fp);
  FUNLOCKFILE_CANCELSAFE();
 }
 return (ret);
}
