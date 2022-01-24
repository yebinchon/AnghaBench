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
struct private_key {int /*<<< orphan*/  localKeyId; scalar_t__ private_key; int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct private_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC4(struct private_key *key)
{
    FUNC2(&key->alg);
    if (key->private_key)
	FUNC3(&key->private_key);
    FUNC0(&key->localKeyId);
    FUNC1(key);
}