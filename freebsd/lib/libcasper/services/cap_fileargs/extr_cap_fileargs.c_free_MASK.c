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
struct TYPE_4__ {scalar_t__ fa_magic; int /*<<< orphan*/ * fa_chann; int /*<<< orphan*/  fa_cache; } ;
typedef  TYPE_1__ fileargs_t ;

/* Variables and functions */
 scalar_t__ FILEARGS_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(fileargs_t *fa)
{

	if (fa == NULL)
		return;

	FUNC0(fa->fa_magic == FILEARGS_MAGIC);

	FUNC4(fa->fa_cache);
	if (fa->fa_chann != NULL) {
		FUNC1(fa->fa_chann);
	}
	FUNC2(&fa->fa_magic, sizeof(fa->fa_magic));
	FUNC3(fa);
}