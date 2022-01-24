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
struct ssh_digest {size_t digest_len; } ;

/* Variables and functions */
 struct ssh_digest* FUNC0 (int) ; 

size_t
FUNC1(int alg)
{
	const struct ssh_digest *digest = FUNC0(alg);

	return digest == NULL ? 0 : digest->digest_len;
}