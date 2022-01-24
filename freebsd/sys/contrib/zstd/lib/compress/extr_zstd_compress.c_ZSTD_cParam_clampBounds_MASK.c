#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_cParameter ;
struct TYPE_3__ {size_t error; int lowerBound; int upperBound; } ;
typedef  TYPE_1__ ZSTD_bounds ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 

__attribute__((used)) static size_t FUNC2(ZSTD_cParameter cParam, int* value)
{
    ZSTD_bounds const bounds = FUNC0(cParam);
    if (FUNC1(bounds.error)) return bounds.error;
    if (*value < bounds.lowerBound) *value = bounds.lowerBound;
    if (*value > bounds.upperBound) *value = bounds.upperBound;
    return 0;
}