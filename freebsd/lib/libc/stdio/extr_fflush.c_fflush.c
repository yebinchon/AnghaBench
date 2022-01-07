
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _flags; } ;
typedef TYPE_1__ FILE ;


 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __SRW ;
 int __SWR ;
 int __sflush (TYPE_1__*) ;
 int _fwalk (int ) ;
 int sflush_locked ;

int
fflush(FILE *fp)
{
 int retval;

 if (fp == ((void*)0))
  return (_fwalk(sflush_locked));
 FLOCKFILE_CANCELSAFE(fp);
 if ((fp->_flags & (__SWR | __SRW)) == 0)
  retval = 0;
 else
  retval = __sflush(fp);
 FUNLOCKFILE_CANCELSAFE();
 return (retval);
}
