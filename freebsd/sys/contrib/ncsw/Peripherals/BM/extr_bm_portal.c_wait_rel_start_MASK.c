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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  t_BmPortal ;
struct bm_rcr_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct bm_rcr_entry* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline__ t_Error FUNC4(t_BmPortal             *p_BmPortal,
                                         struct bm_rcr_entry    **rel,
                                         uint32_t               flags)
{
    int tries = 100;

    FUNC1(flags);
    do {
        *rel = FUNC3(p_BmPortal);
        FUNC2(1);
    } while (!*rel && --tries);

    if (!(*rel))
        return FUNC0(E_BUSY);

    return E_OK;
}