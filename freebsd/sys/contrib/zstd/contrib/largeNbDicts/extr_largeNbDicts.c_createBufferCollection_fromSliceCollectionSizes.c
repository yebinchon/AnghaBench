
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t nbSlices; size_t* capacities; } ;
typedef TYPE_2__ slice_collection_t ;
struct TYPE_11__ {int * ptr; } ;
typedef TYPE_3__ buffer_t ;
struct TYPE_9__ {size_t nbSlices; size_t* capacities; void** slicePtrs; } ;
struct TYPE_12__ {TYPE_1__ slices; TYPE_3__ buffer; } ;
typedef TYPE_4__ buffer_collection_t ;


 int CONTROL (int ) ;
 TYPE_3__ createBuffer (size_t const) ;
 scalar_t__ malloc (size_t const) ;
 size_t sliceCollection_totalCapacity (TYPE_2__) ;

__attribute__((used)) static buffer_collection_t
createBufferCollection_fromSliceCollectionSizes(slice_collection_t sc)
{
    size_t const bufferSize = sliceCollection_totalCapacity(sc);

    buffer_t buffer = createBuffer(bufferSize);
    CONTROL(buffer.ptr != ((void*)0));

    size_t const nbSlices = sc.nbSlices;
    void** const slices = (void**)malloc(nbSlices * sizeof(*slices));
    CONTROL(slices != ((void*)0));

    size_t* const capacities = (size_t*)malloc(nbSlices * sizeof(*capacities));
    CONTROL(capacities != ((void*)0));

    char* const ptr = (char*)buffer.ptr;
    size_t pos = 0;
    for (size_t n=0; n < nbSlices; n++) {
        capacities[n] = sc.capacities[n];
        slices[n] = ptr + pos;
        pos += capacities[n];
    }

    buffer_collection_t result;
    result.buffer = buffer;
    result.slices.nbSlices = nbSlices;
    result.slices.capacities = capacities;
    result.slices.slicePtrs = slices;
    return result;
}
