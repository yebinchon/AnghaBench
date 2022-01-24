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
typedef  scalar_t__ ZSTD_format_e ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ ZSTD_f_zstd1 ; 
 scalar_t__ ZSTD_f_zstd1_magicless ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(ZSTD_format_e format)
{
    size_t const startingInputLength = FUNC0(format);
    /* only supports formats ZSTD_f_zstd1 and ZSTD_f_zstd1_magicless */
    FUNC1( (format == ZSTD_f_zstd1) || (format == ZSTD_f_zstd1_magicless) );
    return startingInputLength;
}