#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_2__ {void* context; scalar_t__ callback; } ;
struct pt_image {void* name; void* sections; TYPE_1__ readmem; } ;
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_image*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_image*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_image image;

	FUNC0(&image, 0xcd, sizeof(image));

	FUNC1(&image, NULL);
	FUNC2(image.name);
	FUNC2(image.sections);
	FUNC2((void *) (uintptr_t) image.readmem.callback);
	FUNC2(image.readmem.context);

	return FUNC3();
}