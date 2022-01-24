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
struct dpp_global {int /*<<< orphan*/  bootstrap; } ;
struct dpp_bootstrap_info {int /*<<< orphan*/  list; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_global*) ; 
 struct dpp_bootstrap_info* FUNC2 (char const*) ; 

struct dpp_bootstrap_info * FUNC3(struct dpp_global *dpp,
					    const char *uri)
{
	struct dpp_bootstrap_info *bi;

	if (!dpp)
		return NULL;

	bi = FUNC2(uri);
	if (!bi)
		return NULL;

	bi->id = FUNC1(dpp);
	FUNC0(&dpp->bootstrap, &bi->list);
	return bi;
}