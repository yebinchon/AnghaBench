#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* entries; } ;
struct TYPE_6__ {TYPE_1__ seekTable; int /*<<< orphan*/  dstream; } ;
typedef  TYPE_2__ ZSTD_seekable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

size_t FUNC2(ZSTD_seekable* zs)
{
    if (zs == NULL) return 0; /* support free on null */
    FUNC0(zs->dstream);
    FUNC1(zs->seekTable.entries);
    FUNC1(zs);

    return 0;
}