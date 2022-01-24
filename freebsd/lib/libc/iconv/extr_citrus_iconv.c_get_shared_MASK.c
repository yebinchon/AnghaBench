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
struct _citrus_iconv_shared {int ci_used_count; } ;
typedef  int /*<<< orphan*/  convname ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct _citrus_iconv_shared*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct _citrus_iconv_shared*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct _citrus_iconv_shared*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ci_hash_entry ; 
 int /*<<< orphan*/  ci_lock ; 
 int /*<<< orphan*/  ci_tailq_entry ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  match_func ; 
 int FUNC6 (struct _citrus_iconv_shared**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  shared_num_unused ; 
 int /*<<< orphan*/  shared_pool ; 
 int /*<<< orphan*/  shared_unused ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC8(struct _citrus_iconv_shared * __restrict * __restrict rci,
    const char *src, const char *dst)
{
	struct _citrus_iconv_shared * ci;
	char convname[PATH_MAX];
	int hashval, ret = 0;

	FUNC7(convname, sizeof(convname), "%s/%s", src, dst);

	FUNC2(&ci_lock);

	/* lookup alread existing entry */
	hashval = FUNC5(convname);
	FUNC4(&shared_pool, ci, ci_hash_entry, match_func,
	    convname, hashval);
	if (ci != NULL) {
		/* found */
		if (ci->ci_used_count == 0) {
			FUNC0(&shared_unused, ci, ci_tailq_entry);
			shared_num_unused--;
		}
		ci->ci_used_count++;
		*rci = ci;
		goto quit;
	}

	/* create new entry */
	ret = FUNC6(&ci, convname, src, dst);
	if (ret)
		goto quit;

	FUNC3(&shared_pool, ci, ci_hash_entry, hashval);
	ci->ci_used_count = 1;
	*rci = ci;

quit:
	FUNC1(&ci_lock);

	return (ret);
}