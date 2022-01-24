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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4 (
    const char              *Name,
    UINT8                   *ByteData,
    UINT32                  Length,
    UINT32                  Level)
{

    /* Dump macro name */

    FUNC2 (Level);
    FUNC3 ("Vendor%s (", Name);

    /* Insert a descriptor name */

    FUNC0 ();
    FUNC3 (")      // Length = 0x%.2X\n", Length);

    /* Dump the vendor bytes */

    FUNC2 (Level);
    FUNC3 ("{\n");

    FUNC1 (Level + 1, ByteData, Length);

    FUNC2 (Level);
    FUNC3 ("}\n");
}