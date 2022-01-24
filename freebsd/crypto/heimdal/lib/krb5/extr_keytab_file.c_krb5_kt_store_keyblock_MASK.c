#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fkt_data {int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_3__ {int /*<<< orphan*/  keyvalue; int /*<<< orphan*/  keytype; } ;
typedef  TYPE_1__ krb5_keyblock ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context,
		       struct fkt_data *fkt,
		       krb5_storage *sp,
		       krb5_keyblock *p)
{
    int ret;

    ret = FUNC3(sp, p->keytype); /* keytype + etype */
    if(ret) {
	FUNC2(context, ret,
			       FUNC0("Cant store keyblock to file %s", ""),
			       fkt->filename);
	return ret;
    }
    ret = FUNC1(context, sp, p->keyvalue);
    if (ret)
	FUNC2(context, ret,
			       FUNC0("Cant store keyblock to file %s", ""),
			       fkt->filename);
    return ret;
}