#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int checksumFlag; scalar_t__ size; scalar_t__ seekTableIndex; scalar_t__ seekTablePos; } ;
typedef  TYPE_1__ ZSTD_frameLog ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 

ZSTD_frameLog* FUNC4(int checksumFlag)
{
    ZSTD_frameLog* fl = FUNC3(sizeof(ZSTD_frameLog));
    if (fl == NULL) return NULL;

    if (FUNC0(FUNC1(fl))) {
        FUNC2(fl);
        return NULL;
    }

    fl->checksumFlag = checksumFlag;
    fl->seekTablePos = 0;
    fl->seekTableIndex = 0;
    fl->size = 0;

    return fl;
}