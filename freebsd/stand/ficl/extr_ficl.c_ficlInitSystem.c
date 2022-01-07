
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nDictCells; } ;
typedef TYPE_1__ FICL_SYSTEM_INFO ;
typedef int FICL_SYSTEM ;


 int ficlInitInfo (TYPE_1__*) ;
 int * ficlInitSystemEx (TYPE_1__*) ;

FICL_SYSTEM *ficlInitSystem(int nDictCells)
{
    FICL_SYSTEM_INFO fsi;
    ficlInitInfo(&fsi);
    fsi.nDictCells = nDictCells;
    return ficlInitSystemEx(&fsi);
}
