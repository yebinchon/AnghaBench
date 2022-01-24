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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  h_Spinlock; int /*<<< orphan*/  freeMemSize; } ;
typedef  TYPE_1__ t_MM ;
typedef  scalar_t__ t_Handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t FUNC5(t_Handle h_MM, uint64_t base, uint64_t size)
{
    t_MM        *p_MM = (t_MM *)h_MM;
    uint64_t    end = base + size;
    uint32_t    intFlags;

    FUNC0(p_MM);

    intFlags = FUNC3(p_MM->h_Spinlock);

    if ( FUNC2( p_MM, base, end ) != E_OK )
    {
        FUNC4(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(0);
    }

    if ( FUNC1 ( p_MM, base, end ) != E_OK )
    {
        FUNC4(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(0);
    }

    /* Adding the deallocated memory size to free memory size */
    p_MM->freeMemSize += size;

    FUNC4(p_MM->h_Spinlock, intFlags);

    return (size);
}