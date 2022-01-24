#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {TYPE_1__ s; scalar_t__ u64; } ;
typedef  TYPE_2__ cvmx_dma_engine_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_DMA_ENGINE_TRANSFER_INTERNAL ; 
 int FUNC0 (int,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static inline int FUNC2(int engine, void *dest, void *source, int length)
{
    cvmx_dma_engine_header_t header;
    header.u64 = 0;
    header.s.type = CVMX_DMA_ENGINE_TRANSFER_INTERNAL;
    return FUNC0(engine, header, FUNC1(source),
                                    FUNC1(dest), length);
}