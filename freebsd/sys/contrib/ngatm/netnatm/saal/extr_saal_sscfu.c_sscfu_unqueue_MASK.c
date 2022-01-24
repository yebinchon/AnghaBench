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
struct sscfu_sig {int /*<<< orphan*/  m; int /*<<< orphan*/  sig; } ;
struct sscfu {scalar_t__ inhand; int /*<<< orphan*/  sigs; } ;

/* Variables and functions */
 struct sscfu_sig* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sscfu_sig*) ; 
 int /*<<< orphan*/  FUNC2 (struct sscfu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sscfu *sscf)
{
	struct sscfu_sig *s;

	while ((s = FUNC0(&sscf->sigs)) != NULL) {
		FUNC2(sscf, s->sig, s->m);
		FUNC1(s);
	}
	sscf->inhand = 0;
}