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
typedef  int /*<<< orphan*/  ZSTD_customMem ;
typedef  int /*<<< orphan*/  ZSTDMT_seqPool ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ZSTDMT_seqPool* FUNC2(unsigned nbWorkers, ZSTD_customMem cMem)
{
    ZSTDMT_seqPool* const seqPool = FUNC0(nbWorkers, cMem);
    if (seqPool == NULL) return NULL;
    FUNC1(seqPool, 0);
    return seqPool;
}