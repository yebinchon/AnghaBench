
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int u; } ;
struct TYPE_8__ {scalar_t__ u; } ;
struct TYPE_7__ {int size; int dict; int here; } ;
typedef TYPE_1__ FICL_DICT ;
typedef int CELL ;


 int assert (int ) ;
 int dictAlign (TYPE_1__*) ;
 scalar_t__ dictCellsAvail (TYPE_1__*) ;
 TYPE_3__ dictIncrease ;
 TYPE_2__ dictThreshold ;
 int ficlMalloc (int) ;

void dictCheckThreshold(FICL_DICT* dp)
{
    if( dictCellsAvail(dp) < dictThreshold.u ) {
        dp->dict = ficlMalloc( dictIncrease.u * sizeof (CELL) );
        assert(dp->dict);
        dp->here = dp->dict;
        dp->size = dictIncrease.u;
        dictAlign(dp);
    }
}
