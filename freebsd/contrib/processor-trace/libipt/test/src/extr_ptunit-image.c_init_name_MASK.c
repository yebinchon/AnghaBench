#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_4__ {void* context; scalar_t__ callback; } ;
struct TYPE_5__ {void* sections; TYPE_1__ readmem; int /*<<< orphan*/  name; } ;
struct image_fixture {TYPE_2__ image; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct image_fixture *ifix)
{
	FUNC0(&ifix->image, 0xcd, sizeof(ifix->image));

	FUNC1(&ifix->image, "image-name");
	FUNC4(ifix->image.name, "image-name");
	FUNC2(ifix->image.sections);
	FUNC2((void *) (uintptr_t) ifix->image.readmem.callback);
	FUNC2(ifix->image.readmem.context);

	return FUNC3();
}