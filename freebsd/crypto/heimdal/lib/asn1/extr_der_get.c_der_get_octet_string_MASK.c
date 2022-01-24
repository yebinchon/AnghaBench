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
struct TYPE_3__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ heim_octet_string ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

int
FUNC2 (const unsigned char *p, size_t len,
		      heim_octet_string *data, size_t *size)
{
    data->length = len;
    data->data = FUNC0(len);
    if (data->data == NULL && data->length != 0)
	return ENOMEM;
    FUNC1 (data->data, p, len);
    if(size) *size = len;
    return 0;
}