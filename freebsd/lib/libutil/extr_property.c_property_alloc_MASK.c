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
struct _property {int dummy; } ;
typedef  TYPE_1__* properties ;
struct TYPE_4__ {int /*<<< orphan*/ * value; struct TYPE_4__* name; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (char*) ; 

__attribute__((used)) static properties
FUNC3(char *name, char *value)
{
    properties n;

    if ((n = (properties)FUNC1(sizeof(struct _property))) == NULL)
	return (NULL);
    n->next = NULL;
    if (name != NULL) {
	if ((n->name = FUNC2(name)) == NULL) {
	    FUNC0(n);
	    return (NULL);
	}
    } else
	n->name = NULL;
    if (value != NULL) {
	if ((n->value = FUNC2(value)) == NULL) {
	    FUNC0(n->name);
	    FUNC0(n);
	    return (NULL);
	}
    } else
	n->value = NULL;
    return (n);
}