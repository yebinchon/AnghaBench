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
struct kobject {struct kobj_type* ktype; struct kobject* parent; } ;
struct kobj_type {struct attribute** default_attrs; } ;
struct attribute {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kobject*) ; 
 int FUNC1 (struct kobject*,struct attribute*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 

__attribute__((used)) static int
FUNC3(struct kobject *kobj, struct kobject *parent)
{
	const struct kobj_type *t;
	int error;

	kobj->parent = parent;
	error = FUNC0(kobj);
	if (error == 0 && kobj->ktype && kobj->ktype->default_attrs) {
		struct attribute **attr;
		t = kobj->ktype;

		for (attr = t->default_attrs; *attr != NULL; attr++) {
			error = FUNC1(kobj, *attr);
			if (error)
				break;
		}
		if (error)
			FUNC2(kobj);

	}
	return (error);
}