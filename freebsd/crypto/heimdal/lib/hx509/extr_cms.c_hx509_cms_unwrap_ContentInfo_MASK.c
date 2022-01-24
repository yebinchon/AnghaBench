#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_oid ;
typedef  TYPE_1__ heim_octet_string ;
struct TYPE_14__ {int /*<<< orphan*/ * content; int /*<<< orphan*/  contentType; } ;
typedef  TYPE_3__ ContentInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(const heim_octet_string *in,
			     heim_oid *oid,
			     heim_octet_string *out,
			     int *have_data)
{
    ContentInfo ci;
    size_t size;
    int ret;

    FUNC5(oid, 0, sizeof(*oid));
    FUNC5(out, 0, sizeof(*out));

    ret = FUNC0(in->data, in->length, &ci, &size);
    if (ret)
	return ret;

    ret = FUNC2(&ci.contentType, oid);
    if (ret) {
	FUNC4(&ci);
	return ret;
    }
    if (ci.content) {
	ret = FUNC1(ci.content, out);
	if (ret) {
	    FUNC3(oid);
	    FUNC4(&ci);
	    return ret;
	}
    } else
	FUNC5(out, 0, sizeof(*out));

    if (have_data)
	*have_data = (ci.content != NULL) ? 1 : 0;

    FUNC4(&ci);

    return 0;
}