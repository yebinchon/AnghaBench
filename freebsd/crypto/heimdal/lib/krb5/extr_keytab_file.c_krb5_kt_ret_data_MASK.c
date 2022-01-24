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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
struct TYPE_3__ {int length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int int16_t ;

/* Variables and functions */
 int ENOMEM ; 
 int KRB5_KT_END ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_context context,
		 krb5_storage *sp,
		 krb5_data *data)
{
    int ret;
    int16_t size;
    ret = FUNC1(sp, &size);
    if(ret)
	return ret;
    data->length = size;
    data->data = FUNC4(size);
    if (data->data == NULL) {
	FUNC2(context, ENOMEM, FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    ret = FUNC3(sp, data->data, size);
    if(ret != size)
	return (ret < 0)? errno : KRB5_KT_END;
    return 0;
}