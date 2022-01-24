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
struct acl_field {struct acl_field* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acl_field*) ; 
 int /*<<< orphan*/  FUNC1 (struct acl_field*) ; 

__attribute__((used)) static void
FUNC2(struct acl_field *acl, int retv)
{
    struct acl_field *next;
    if (retv)
	FUNC1(acl);
    while(acl != NULL) {
	next = acl->next;
	FUNC0(acl);
	acl = next;
    }
}