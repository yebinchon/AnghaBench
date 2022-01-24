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
struct hash_alg_map {int halg; char const* hname; } ;

/* Variables and functions */
 struct hash_alg_map* hash_algs ; 

__attribute__((used)) static const char *
FUNC0(int hash_alg)
{
	struct hash_alg_map *hmp;

	for (hmp = hash_algs; hmp->halg > 0; hmp++) {
		if (hmp->halg == hash_alg)
			return (hmp->hname);
	}
	return (NULL);
}