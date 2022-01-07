
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _flags; } ;
typedef TYPE_1__ FILE ;


 int __SRW ;
 int __SWR ;
 int __sflush (TYPE_1__*) ;
 int _fwalk (int ) ;
 int sflush_locked ;

int
__fflush(FILE *fp)
{
 int retval;

 if (fp == ((void*)0))
  return (_fwalk(sflush_locked));
 if ((fp->_flags & (__SWR | __SRW)) == 0)
  retval = 0;
 else
  retval = __sflush(fp);
 return (retval);
}
