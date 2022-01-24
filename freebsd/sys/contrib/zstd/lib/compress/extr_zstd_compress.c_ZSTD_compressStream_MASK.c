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
typedef  int /*<<< orphan*/  ZSTD_outBuffer ;
typedef  int /*<<< orphan*/  ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  ZSTD_CStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_continue ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

size_t FUNC3(ZSTD_CStream* zcs, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{
    FUNC0( FUNC1(zcs, output, input, ZSTD_e_continue) );
    return FUNC2(zcs);
}