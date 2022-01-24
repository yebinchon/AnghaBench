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
struct ptunit_result {int dummy; } ;
struct image_fixture {int /*<<< orphan*/  image; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct image_fixture *ifix)
{
	const char *name;

	FUNC0(&ifix->image, "image-name");

	name = FUNC1(&ifix->image);
	FUNC3(name, "image-name");

	return FUNC2();
}