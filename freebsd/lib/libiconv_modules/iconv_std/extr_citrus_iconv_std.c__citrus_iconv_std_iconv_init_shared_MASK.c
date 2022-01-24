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
struct _citrus_iconv_std_shared {int /*<<< orphan*/  is_src_encoding; int /*<<< orphan*/  is_dst_encoding; int /*<<< orphan*/  is_srcs; int /*<<< orphan*/  is_invalid; int /*<<< orphan*/  is_use_invalid; } ;
struct _citrus_iconv_shared {struct _citrus_iconv_std_shared* ci_closure; } ;
struct _citrus_esdb {int /*<<< orphan*/  db_invalid; int /*<<< orphan*/  db_use_invalid; int /*<<< orphan*/  db_len_variable; int /*<<< orphan*/  db_variable; int /*<<< orphan*/  db_encname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct _citrus_esdb*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_esdb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (struct _citrus_iconv_std_shared*) ; 
 struct _citrus_iconv_std_shared* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct _citrus_esdb*,struct _citrus_esdb*) ; 

__attribute__((used)) static int
/*ARGSUSED*/
FUNC8(struct _citrus_iconv_shared *ci,
    const char * __restrict src, const char * __restrict dst)
{
	struct _citrus_esdb esdbdst, esdbsrc;
	struct _citrus_iconv_std_shared *is;
	int ret;

	is = FUNC6(sizeof(*is));
	if (is == NULL) {
		ret = errno;
		goto err0;
	}
	ret = FUNC1(&esdbsrc, src);
	if (ret)
		goto err1;
	ret = FUNC1(&esdbdst, dst);
	if (ret)
		goto err2;
	ret = FUNC4(&is->is_src_encoding, esdbsrc.db_encname,
	    esdbsrc.db_variable, esdbsrc.db_len_variable);
	if (ret)
		goto err3;
	ret = FUNC4(&is->is_dst_encoding, esdbdst.db_encname,
	    esdbdst.db_variable, esdbdst.db_len_variable);
	if (ret)
		goto err4;
	is->is_use_invalid = esdbdst.db_use_invalid;
	is->is_invalid = esdbdst.db_invalid;

	FUNC0(&is->is_srcs);
	ret = FUNC7(&is->is_srcs, &esdbsrc, &esdbdst);
	if (ret)
		goto err5;

	FUNC2(&esdbsrc);
	FUNC2(&esdbdst);
	ci->ci_closure = is;

	return (0);

err5:
	FUNC3(is->is_dst_encoding);
err4:
	FUNC3(is->is_src_encoding);
err3:
	FUNC2(&esdbdst);
err2:
	FUNC2(&esdbsrc);
err1:
	FUNC5(is);
err0:
	return (ret);
}