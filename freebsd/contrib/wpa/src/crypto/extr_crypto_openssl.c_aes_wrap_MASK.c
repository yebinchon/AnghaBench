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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  actx ;
typedef  int /*<<< orphan*/  AES_KEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 () ; 

int FUNC4(const u8 *kek, size_t kek_len, int n, const u8 *plain, u8 *cipher)
{
	AES_KEY actx;
	int res;

	if (FUNC3())
		return -1;
	if (FUNC0(kek, kek_len << 3, &actx))
		return -1;
	res = FUNC1(&actx, NULL, cipher, plain, n * 8);
	FUNC2(&actx, sizeof(actx));
	return res <= 0 ? -1 : 0;
}