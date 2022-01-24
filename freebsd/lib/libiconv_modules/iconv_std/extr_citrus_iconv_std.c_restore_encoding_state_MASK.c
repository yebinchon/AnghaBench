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
struct _citrus_iconv_std_encoding {int /*<<< orphan*/  se_handle; int /*<<< orphan*/  se_pssaved; scalar_t__ se_ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct _citrus_iconv_std_encoding *se)
{

	if (se->se_ps)
		FUNC1(se->se_ps, se->se_pssaved,
		    FUNC0(se->se_handle));
}