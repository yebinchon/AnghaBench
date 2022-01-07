
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nbSlices; scalar_t__* capacities; } ;
typedef TYPE_1__ slice_collection_t ;



__attribute__((used)) static size_t sliceCollection_totalCapacity(slice_collection_t sc)
{
    size_t totalSize = 0;
    for (size_t n=0; n<sc.nbSlices; n++)
        totalSize += sc.capacities[n];
    return totalSize;
}
