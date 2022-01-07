
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_DICT ;


 int assert (int *) ;
 int ficlFree (int *) ;

void dictDelete(FICL_DICT *pDict)
{
    assert(pDict);
    ficlFree(pDict);
    return;
}
