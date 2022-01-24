#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_15__ {int len; TYPE_5__* val; } ;
struct TYPE_16__ {TYPE_3__ rdnSequence; } ;
struct TYPE_18__ {TYPE_4__ u; } ;
struct TYPE_17__ {int len; TYPE_10__* val; } ;
struct TYPE_13__ {int /*<<< orphan*/ * utf8String; } ;
struct TYPE_14__ {TYPE_1__ u; int /*<<< orphan*/  element; } ;
struct TYPE_12__ {TYPE_2__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_5__ RelativeDistinguishedName ;
typedef  TYPE_6__ Name ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  choice_DirectoryString_utf8String ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 TYPE_10__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*,int) ; 
 void* FUNC4 (TYPE_5__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 

int
FUNC6(hx509_context context,
		   Name *name,
		   int append,
		   const heim_oid *oid,
		   const char *str)
{
    RelativeDistinguishedName *rdn;
    int ret;
    void *ptr;

    ptr = FUNC4(name->u.rdnSequence.val,
		  sizeof(name->u.rdnSequence.val[0]) *
		  (name->u.rdnSequence.len + 1));
    if (ptr == NULL) {
	FUNC1(context, 0, ENOMEM, "Out of memory");
	return ENOMEM;
    }
    name->u.rdnSequence.val = ptr;

    if (append) {
	rdn = &name->u.rdnSequence.val[name->u.rdnSequence.len];
    } else {
	FUNC3(&name->u.rdnSequence.val[1],
		&name->u.rdnSequence.val[0],
		name->u.rdnSequence.len *
		sizeof(name->u.rdnSequence.val[0]));

	rdn = &name->u.rdnSequence.val[0];
    }
    rdn->val = FUNC2(sizeof(rdn->val[0]));
    if (rdn->val == NULL)
	return ENOMEM;
    rdn->len = 1;
    ret = FUNC0(oid, &rdn->val[0].type);
    if (ret)
	return ret;
    rdn->val[0].value.element = choice_DirectoryString_utf8String;
    rdn->val[0].value.u.utf8String = FUNC5(str);
    if (rdn->val[0].value.u.utf8String == NULL)
	return ENOMEM;
    name->u.rdnSequence.len += 1;

    return 0;
}