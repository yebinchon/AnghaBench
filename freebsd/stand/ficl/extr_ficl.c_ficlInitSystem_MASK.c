#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nDictCells; } ;
typedef  TYPE_1__ FICL_SYSTEM_INFO ;
typedef  int /*<<< orphan*/  FICL_SYSTEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 

FICL_SYSTEM *FUNC2(int nDictCells)
{
    FICL_SYSTEM_INFO fsi;
    FUNC0(&fsi);
    fsi.nDictCells = nDictCells;
    return FUNC1(&fsi);
}