#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  arm_dcache_align ; 
 int /*<<< orphan*/ * busdma_bufalloc_alloc_uncacheable ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * busdma_bufalloc_free_uncacheable ; 
 void* coherent_allocator ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* maploads_bounced ; 
 void* maploads_coherent ; 
 void* maploads_dmamem ; 
 void* maploads_mbuf ; 
 void* maploads_physmem ; 
 void* maploads_total ; 
 void* standard_allocator ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{

	maploads_total    = FUNC1(M_WAITOK);
	maploads_bounced  = FUNC1(M_WAITOK);
	maploads_coherent = FUNC1(M_WAITOK);
	maploads_dmamem   = FUNC1(M_WAITOK);
	maploads_mbuf     = FUNC1(M_WAITOK);
	maploads_physmem  = FUNC1(M_WAITOK);

	/* Create a cache of buffers in standard (cacheable) memory. */
	standard_allocator = FUNC0("buffer",
	    arm_dcache_align,	/* minimum_alignment */
	    NULL,		/* uma_alloc func */
	    NULL,		/* uma_free func */
	    0);			/* uma_zcreate_flags */

	/*
	 * Create a cache of buffers in uncacheable memory, to implement the
	 * BUS_DMA_COHERENT (and potentially BUS_DMA_NOCACHE) flag.
	 */
	coherent_allocator = FUNC0("coherent",
	    arm_dcache_align,	/* minimum_alignment */
	    busdma_bufalloc_alloc_uncacheable,
	    busdma_bufalloc_free_uncacheable,
	    0);			/* uma_zcreate_flags */
}