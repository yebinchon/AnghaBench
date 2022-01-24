#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int version; } ;
struct vmstate {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_9__ {scalar_t__ vmst; } ;
typedef  TYPE_2__ kvm_t ;
typedef  int /*<<< orphan*/  kvaddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(kvm_t *kd, kvaddr_t va, off_t *pa)
{

	if (FUNC0(kd)) {
		FUNC3(kd, 0,
		    "_amd64_minidump_kvatop called in live kernel!");
		return (0);
	}
	if (((struct vmstate *)kd->vmst)->hdr.version == 1)
		return (FUNC2(kd, va, pa));
	else
		return (FUNC1(kd, va, pa));
}