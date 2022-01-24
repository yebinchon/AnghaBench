#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fa_magic; int fa_fdflags; int /*<<< orphan*/  fa_cache; int /*<<< orphan*/ * fa_chann; } ;
typedef  TYPE_1__ fileargs_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 scalar_t__ FILEARGS_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

cap_channel_t *
FUNC4(fileargs_t *fa, int *flags)
{
	cap_channel_t *chan;

	if (fa == NULL)
		return (NULL);

	FUNC0(fa->fa_magic == FILEARGS_MAGIC);

	chan = fa->fa_chann;
	if (flags != NULL) {
		*flags = fa->fa_fdflags;
	}

	FUNC3(fa->fa_cache);
	FUNC1(&fa->fa_magic, sizeof(fa->fa_magic));
	FUNC2(fa);

	return (chan);
}