
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {int numOfPoolsUsed; TYPE_1__* extBufPool; } ;
typedef TYPE_2__ t_FmExtPools ;
struct TYPE_4__ {scalar_t__ size; size_t id; } ;



void FmSpSetBufPoolsInAscOrderOfBufSizes(t_FmExtPools *p_FmExtPools,
                                         uint8_t *orderedArray,
                                         uint16_t *sizesArray)
{
    uint16_t bufSize = 0;
    int i=0, j=0, k=0;


    for (i=0;i<p_FmExtPools->numOfPoolsUsed;i++)
    {

        bufSize = p_FmExtPools->extBufPool[i].size;


        sizesArray[p_FmExtPools->extBufPool[i].id] = bufSize;


        for (j=0;j<=i;j++)
        {

            if (j==i)
                orderedArray[i] = p_FmExtPools->extBufPool[i].id;
            else
            {

                if (bufSize < sizesArray[orderedArray[j]])
                {

                    for (k=i;k>j;k--)
                       orderedArray[k] = orderedArray[k-1];


                    orderedArray[k] = p_FmExtPools->extBufPool[i].id;
                    break;
                }
            }
        }
    }
}
