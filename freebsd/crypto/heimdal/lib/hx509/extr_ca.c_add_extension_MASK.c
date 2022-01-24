#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
typedef  int /*<<< orphan*/  heim_octet_string ;
typedef  int /*<<< orphan*/  ext ;
struct TYPE_8__ {int /*<<< orphan*/  extnValue; int /*<<< orphan*/  extnID; int /*<<< orphan*/ * critical; } ;
struct TYPE_7__ {int /*<<< orphan*/  extensions; } ;
typedef  TYPE_1__ TBSCertificate ;
typedef  TYPE_2__ Extension ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(hx509_context context,
	      TBSCertificate *tbsc,
	      int critical_flag,
	      const heim_oid *oid,
	      const heim_octet_string *data)
{
    Extension ext;
    int ret;

    FUNC6(&ext, 0, sizeof(ext));

    if (critical_flag) {
	ext.critical = FUNC5(sizeof(*ext.critical));
	if (ext.critical == NULL) {
	    ret = ENOMEM;
	    FUNC4(context, 0, ret, "Out of memory");
	    goto out;
	}
	*ext.critical = TRUE;
    }

    ret = FUNC2(oid, &ext.extnID);
    if (ret) {
	FUNC4(context, 0, ret, "Out of memory");
	goto out;
    }
    ret = FUNC1(data, &ext.extnValue);
    if (ret) {
	FUNC4(context, 0, ret, "Out of memory");
	goto out;
    }
    ret = FUNC0(tbsc->extensions, &ext);
    if (ret) {
	FUNC4(context, 0, ret, "Out of memory");
	goto out;
    }
out:
    FUNC3(&ext);
    return ret;
}