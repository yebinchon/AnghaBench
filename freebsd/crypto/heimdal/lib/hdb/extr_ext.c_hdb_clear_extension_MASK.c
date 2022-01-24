#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_9__ {TYPE_3__* extensions; } ;
typedef  TYPE_2__ hdb_entry ;
struct TYPE_8__ {unsigned int element; } ;
struct TYPE_10__ {size_t len; struct TYPE_10__* val; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*,int) ; 

krb5_error_code
FUNC3(krb5_context context,
		    hdb_entry *entry,
		    int type)
{
    size_t i;

    if (entry->extensions == NULL)
	return 0;

    for (i = 0; i < entry->extensions->len; i++) {
	if (entry->extensions->val[i].data.element == (unsigned)type) {
	    FUNC1(&entry->extensions->val[i]);
	    FUNC2(&entry->extensions->val[i],
		    &entry->extensions->val[i + 1],
		    sizeof(entry->extensions->val[i]) * (entry->extensions->len - i - 1));
	    entry->extensions->len--;
	}
    }
    if (entry->extensions->len == 0) {
	FUNC0(entry->extensions->val);
	FUNC0(entry->extensions);
	entry->extensions = NULL;
    }

    return 0;
}