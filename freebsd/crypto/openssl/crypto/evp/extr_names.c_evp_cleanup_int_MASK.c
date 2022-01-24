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
 int /*<<< orphan*/  FUNC0 () ; 
 int OBJ_NAME_TYPE_CIPHER_METH ; 
 int OBJ_NAME_TYPE_MD_METH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
    FUNC1(OBJ_NAME_TYPE_CIPHER_METH);
    FUNC1(OBJ_NAME_TYPE_MD_METH);
    /*
     * The above calls will only clean out the contents of the name hash
     * table, but not the hash table itself.  The following line does that
     * part.  -- Richard Levitte
     */
    FUNC1(-1);

    FUNC0();
    FUNC2();

    FUNC3();
}