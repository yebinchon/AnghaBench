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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(size_t hash_len, const u8 *secret, size_t secret_len,
			   const char *label, u8 *out, size_t outlen)
{
	if (hash_len == 32)
		return FUNC0(secret, secret_len, NULL,
				       (const u8 *) label, FUNC3(label),
				       out, outlen);
	if (hash_len == 48)
		return FUNC1(secret, secret_len, NULL,
				       (const u8 *) label, FUNC3(label),
				       out, outlen);
	if (hash_len == 64)
		return FUNC2(secret, secret_len, NULL,
				       (const u8 *) label, FUNC3(label),
				       out, outlen);
	return -1;
}