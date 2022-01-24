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
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_4__ {scalar_t__ data; int /*<<< orphan*/  datasize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* fp ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(module_t mod, int type, void *unused)
{
	switch (type) {
	case MOD_LOAD:
		fp = FUNC0("beastie");

		if (fp == NULL)
			return (ENOENT);

		if (((const char *)fp->data)[fp->datasize - 1] != '\0') {
			FUNC1(fp, FIRMWARE_UNLOAD);
			return (EINVAL);
		}
		FUNC2("%s", (const char *)fp->data);

		return (0);
	case MOD_UNLOAD:
		FUNC2("Bye!\n");

		if (fp != NULL) {
			FUNC2("%s", (const char *)fp->data);
			FUNC1(fp, FIRMWARE_UNLOAD);
		}

		return (0);
	}
	return (EINVAL);
}