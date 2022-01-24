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
struct krb5_plugin {struct krb5_plugin* next; void* symbol; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct krb5_plugin* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC2(krb5_context context, struct krb5_plugin **list, void *symbol)
{
    struct krb5_plugin *e;

    e = FUNC0(1, sizeof(*e));
    if (e == NULL) {
	FUNC1(context, ENOMEM, "malloc: out of memory");
	return ENOMEM;
    }
    e->symbol = symbol;
    e->next = *list;
    *list = e;
    return 0;
}