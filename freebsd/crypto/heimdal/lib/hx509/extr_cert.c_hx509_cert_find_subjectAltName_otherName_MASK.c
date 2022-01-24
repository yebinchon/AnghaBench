#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_4__ hx509_octet_string_list ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_15__ {size_t len; TYPE_3__* val; } ;
struct TYPE_11__ {int /*<<< orphan*/  value; int /*<<< orphan*/  type_id; } ;
struct TYPE_12__ {TYPE_1__ otherName; } ;
struct TYPE_13__ {scalar_t__ element; TYPE_2__ u; } ;
typedef  TYPE_5__ GeneralNames ;

/* Variables and functions */
 int HX509_EXTENSION_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ choice_GeneralName_otherName ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC7(hx509_context context,
					 hx509_cert cert,
					 const heim_oid *oid,
					 hx509_octet_string_list *list)
{
    GeneralNames sa;
    int ret;
    size_t i, j;

    list->val = NULL;
    list->len = 0;

    i = 0;
    while (1) {
	ret = FUNC3(FUNC0(cert), &i, &sa);
	i++;
	if (ret == HX509_EXTENSION_NOT_FOUND) {
	    return 0;
	} else if (ret != 0) {
	    FUNC6(context, 0, ret, "Error searching for SAN");
	    FUNC5(list);
	    return ret;
	}

	for (j = 0; j < sa.len; j++) {
	    if (sa.val[j].element == choice_GeneralName_otherName &&
		FUNC2(&sa.val[j].u.otherName.type_id, oid) == 0)
	    {
		ret = FUNC1(list, &sa.val[j].u.otherName.value);
		if (ret) {
		    FUNC6(context, 0, ret,
					   "Error adding an exra SAN to "
					   "return list");
		    FUNC5(list);
		    FUNC4(&sa);
		    return ret;
		}
	    }
	}
	FUNC4(&sa);
    }
}