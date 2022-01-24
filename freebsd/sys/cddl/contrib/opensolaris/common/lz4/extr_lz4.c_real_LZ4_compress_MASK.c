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
struct refTables {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_NOSLEEP ; 
 int LZ4_64KLIMIT ; 
 int FUNC0 (void*,char const*,char*,int,int) ; 
 int FUNC1 (void*,char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  lz4_ctx_cache ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(const char *source, char *dest, int isize, int osize)
{
#if HEAPMODE
#if defined(_KERNEL) || defined(_FAKE_KERNEL)
	void *ctx = kmem_cache_alloc(lz4_ctx_cache, KM_NOSLEEP);
#else
	void *ctx = malloc(sizeof(struct refTables));
#endif
	int result;

	/*
	 * out of kernel memory, gently fall through - this will disable
	 * compression in zio_compress_data
	 */
	if (ctx == NULL)
		return (0);

	bzero(ctx, sizeof(struct refTables));
	if (isize < LZ4_64KLIMIT)
		result = LZ4_compress64kCtx(ctx, source, dest, isize, osize);
	else
		result = LZ4_compressCtx(ctx, source, dest, isize, osize);

#if defined(_KERNEL) || defined(_FAKE_KERNEL)
	kmem_cache_free(lz4_ctx_cache, ctx);
#else
	free(ctx);
#endif
	return (result);
#else
	if (isize < (int)LZ4_64KLIMIT)
		return (FUNC0(NULL, source, dest, isize, osize));
	return (FUNC1(NULL, source, dest, isize, osize));
#endif
}