
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ here; } ;
struct TYPE_8__ {int size; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_HASH ;
typedef TYPE_2__ FICL_DICT ;


 int dictAlign (TYPE_2__*) ;
 int dictAllot (TYPE_2__*,int) ;
 int hashReset (TYPE_1__*) ;

FICL_HASH *dictCreateWordlist(FICL_DICT *dp, int nBuckets)
{
    FICL_HASH *pHash;

    dictAlign(dp);
    pHash = (FICL_HASH *)dp->here;
    dictAllot(dp, sizeof (FICL_HASH)
        + (nBuckets-1) * sizeof (FICL_WORD *));

    pHash->size = nBuckets;
    hashReset(pHash);
    return pHash;
}
