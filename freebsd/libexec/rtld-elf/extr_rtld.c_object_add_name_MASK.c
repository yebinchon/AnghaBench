#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  names; } ;
typedef  TYPE_1__ Obj_Entry ;
typedef  TYPE_2__ Name_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(Obj_Entry *obj, const char *name)
{
    Name_Entry *entry;
    size_t len;

    len = FUNC3(name);
    entry = FUNC1(sizeof(Name_Entry) + len);

    if (entry != NULL) {
	FUNC2(entry->name, name);
	FUNC0(&obj->names, entry, link);
    }
}