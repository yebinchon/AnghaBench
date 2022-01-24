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
typedef  int /*<<< orphan*/  xz_file_info ;
typedef  int /*<<< orphan*/  lzma_index_iter ;
typedef  int /*<<< orphan*/  file_pair ;
typedef  int /*<<< orphan*/  block_header_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool
FUNC2(file_pair *pair, const lzma_index_iter *iter,
		block_header_info *bhi, xz_file_info *xfi)
{
	if (FUNC0(pair, iter, bhi, xfi))
		return true;

	if (FUNC1(pair, iter))
		return true;

	return false;
}