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
struct crypto_public_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t) ; 

struct crypto_public_key *
FUNC1(const u8 *n, size_t n_len,
			       const u8 *e, size_t e_len)
{
	return (struct crypto_public_key *)
		FUNC0(n, n_len, e, e_len);
}