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
struct _citrus_iconv_shared {scalar_t__ ci_used_count; } ;

/* Variables and functions */
 struct _citrus_iconv_shared* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct _citrus_iconv_shared*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct _citrus_iconv_shared*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct _citrus_iconv_shared*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ci_hash_entry ; 
 int /*<<< orphan*/  ci_lock ; 
 int /*<<< orphan*/  ci_tailq_entry ; 
 int /*<<< orphan*/  FUNC6 (struct _citrus_iconv_shared*) ; 
 scalar_t__ shared_max_reuse ; 
 scalar_t__ shared_num_unused ; 
 int /*<<< orphan*/  shared_unused ; 

__attribute__((used)) static void
FUNC7(struct _citrus_iconv_shared * __restrict ci)
{

	FUNC4(&ci_lock);
	ci->ci_used_count--;
	if (ci->ci_used_count == 0) {
		/* put it into unused list */
		shared_num_unused++;
		FUNC1(&shared_unused, ci, ci_tailq_entry);
		/* flood out */
		while (shared_num_unused > shared_max_reuse) {
			ci = FUNC0(&shared_unused);
			FUNC2(&shared_unused, ci, ci_tailq_entry);
			FUNC5(ci, ci_hash_entry);
			shared_num_unused--;
			FUNC6(ci);
		}
	}

	FUNC3(&ci_lock);
}