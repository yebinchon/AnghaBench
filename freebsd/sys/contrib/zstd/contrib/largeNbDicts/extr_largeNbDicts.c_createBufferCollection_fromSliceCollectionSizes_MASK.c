#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t nbSlices; size_t* capacities; } ;
typedef  TYPE_2__ slice_collection_t ;
struct TYPE_11__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_3__ buffer_t ;
struct TYPE_9__ {size_t nbSlices; size_t* capacities; void** slicePtrs; } ;
struct TYPE_12__ {TYPE_1__ slices; TYPE_3__ buffer; } ;
typedef  TYPE_4__ buffer_collection_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC1 (size_t const) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 size_t FUNC3 (TYPE_2__) ; 

__attribute__((used)) static buffer_collection_t
FUNC4(slice_collection_t sc)
{
    size_t const bufferSize = FUNC3(sc);

    buffer_t buffer = FUNC1(bufferSize);
    FUNC0(buffer.ptr != NULL);

    size_t const nbSlices = sc.nbSlices;
    void** const slices = (void**)FUNC2(nbSlices * sizeof(*slices));
    FUNC0(slices != NULL);

    size_t* const capacities = (size_t*)FUNC2(nbSlices * sizeof(*capacities));
    FUNC0(capacities != NULL);

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