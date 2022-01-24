#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ FUZZ_dataProducer_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,size_t) ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t FUNC2(FUZZ_dataProducer_t *producer)
{
    size_t producerSliceSize = FUNC1(
                                  producer, 0, producer->size);
    return FUNC0(producer, producerSliceSize);
}