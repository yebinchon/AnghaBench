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
struct any_data {scalar_t__ kt; struct any_data* name; struct any_data* next; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct any_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2 (krb5_context context, struct any_data *a)
{
    struct any_data *next;

    for (; a != NULL; a = next) {
	next = a->next;
	FUNC0 (a->name);
	if(a->kt)
	    FUNC1(context, a->kt);
	FUNC0 (a);
    }
}