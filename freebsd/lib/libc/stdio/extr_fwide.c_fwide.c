
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _orientation; } ;
typedef TYPE_1__ FILE ;


 int FLOCKFILE (TYPE_1__*) ;
 int FUNLOCKFILE (TYPE_1__*) ;

int
fwide(FILE *fp, int mode)
{
 int m;

 FLOCKFILE(fp);

 if (mode != 0 && fp->_orientation == 0)
  fp->_orientation = mode > 0 ? 1 : -1;
 m = fp->_orientation;
 FUNLOCKFILE(fp);

 return (m);
}
