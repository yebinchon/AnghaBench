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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  h_FqidMm; int /*<<< orphan*/  h_RsrvFqidMm; } ;
typedef  TYPE_1__ t_Qm ;

/* Variables and functions */
 scalar_t__ ILLEGAL_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint32_t FUNC5(t_Qm *p_Qm, uint32_t size, uint32_t alignment, bool force, uint32_t base)
{
    uint64_t    ans;
    uint32_t    intFlags;

    intFlags = FUNC3(p_Qm->lock);
    if (force)
        ans = FUNC1(p_Qm->h_FqidMm,
                          (uint64_t)base,
                          (uint64_t)size,
                          "QM FQID MEM");
    else
        ans = FUNC0(p_Qm->h_FqidMm,
                     (uint64_t)size,
                     alignment,
                     "QM FQID MEM");
    if (ans == ILLEGAL_BASE)
    {
        FUNC4(p_Qm->lock, intFlags);
        return (uint32_t)ans;
    }
    base = (uint32_t)ans;
    ans = FUNC1(p_Qm->h_RsrvFqidMm,
                      (uint64_t)base,
                      (uint64_t)size,
                      "QM rsrv FQID MEM");
    if (ans == ILLEGAL_BASE)
    {
        FUNC2(p_Qm->h_FqidMm, (uint64_t)base);
        FUNC4(p_Qm->lock, intFlags);
        return (uint32_t)ans;
    }
    FUNC4(p_Qm->lock, intFlags);

    return (uint32_t)base;
}