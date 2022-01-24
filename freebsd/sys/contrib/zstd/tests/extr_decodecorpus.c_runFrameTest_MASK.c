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
typedef  int /*<<< orphan*/  frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  gt_frame ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(U32* seed)
{
    frame_t fr;
    U32 const seedCopy = *seed;
    {   dictInfo const info = FUNC4(0, 0, NULL, 0);
        *seed = FUNC3(*seed, &fr, info);
    }

    {   size_t const r = FUNC5(&fr);
        if (FUNC2(r)) {
            FUNC0("Error in simple mode on test seed %u: %s\n",
                    (unsigned)seedCopy, FUNC1(r));
            return 1;
        }
    }
    {   size_t const r = FUNC6(&fr);
        if (FUNC2(r)) {
            FUNC0("Error in streaming mode on test seed %u: %s\n",
                    (unsigned)seedCopy, FUNC1(r));
            return 1;
        }
    }
    {   size_t const r = FUNC7(*seed, gt_frame);  /* avoid big dictionaries */
        if (FUNC2(r)) {
            FUNC0("Error in dictionary mode on test seed %u: %s\n",
                    (unsigned)seedCopy, FUNC1(r));
            return 1;
        }
    }
    return 0;
}