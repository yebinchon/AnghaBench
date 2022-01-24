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
typedef  enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (int,void*,void*,size_t,size_t) ; 
 scalar_t__ zio_decompress_fail_fraction ; 

int
FUNC6(enum zio_compress c, abd_t *src, void *dst,
    size_t s_len, size_t d_len)
{
	void *tmp = FUNC2(src, s_len);
	int ret = FUNC5(c, tmp, dst, s_len, d_len);
	FUNC3(src, tmp, s_len);

	/*
	 * Decompression shouldn't fail, because we've already verifyied
	 * the checksum.  However, for extra protection (e.g. against bitflips
	 * in non-ECC RAM), we handle this error (and test it).
	 */
	FUNC0(ret);
	if (zio_decompress_fail_fraction != 0 &&
	    FUNC4(zio_decompress_fail_fraction) == 0)
		ret = FUNC1(EINVAL);

	return (ret);
}