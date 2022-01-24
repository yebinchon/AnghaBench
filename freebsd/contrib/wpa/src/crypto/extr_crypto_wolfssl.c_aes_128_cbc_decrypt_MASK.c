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
typedef  int /*<<< orphan*/  Aes ;

/* Variables and functions */
 int /*<<< orphan*/  AES_DECRYPTION ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC3(const u8 *key, const u8 *iv, u8 *data, size_t data_len)
{
	Aes aes;
	int ret;

	if (FUNC0())
		return -1;

	ret = FUNC2(&aes, key, 16, iv, AES_DECRYPTION);
	if (ret != 0)
		return -1;

	ret = FUNC1(&aes, data, data, data_len);
	if (ret != 0)
		return -1;
	return 0;
}