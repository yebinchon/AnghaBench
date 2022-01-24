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
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_3__ {char* data; size_t length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context, krb5_storage *sp, krb5_data *data)
{
    int printable = 1;
    size_t i;
    char *p;

    p = data->data;
    for(i = 0; i < data->length; i++)
	if(!FUNC3((unsigned char)p[i]) && p[i] != '.'){
	    printable = 0;
	    break;
	}
    if(printable)
	return FUNC0(context, sp, "\"%.*s\"",
			     data->length, data->data);
    FUNC2(data->data, data->length, &p);
    FUNC0(context, sp, "%s", p);
    FUNC1(p);
    return 0;
}