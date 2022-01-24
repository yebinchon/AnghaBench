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
typedef  int ssize_t ;
struct TYPE_3__ {int length; int negative; unsigned char* data; } ;
typedef  TYPE_1__ heim_integer ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (char const*,unsigned char*,int) ; 
 unsigned char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int FUNC4 (char const*) ; 

int
FUNC5 (const char *p, heim_integer *data)
{
    ssize_t len;

    data->length = 0;
    data->negative = 0;
    data->data = NULL;

    if (*p == '-') {
	p++;
	data->negative = 1;
    }

    len = FUNC4(p);
    if (len <= 0) {
	data->data = NULL;
	data->length = 0;
	return EINVAL;
    }

    data->length = (len / 2) + 1;
    data->data = FUNC2(data->length);
    if (data->data == NULL) {
	data->length = 0;
	return ENOMEM;
    }

    len = FUNC1(p, data->data, data->length);
    if (len < 0) {
	FUNC0(data->data);
	data->data = NULL;
	data->length = 0;
	return EINVAL;
    }

    {
	unsigned char *q = data->data;
	while(len > 0 && *q == 0) {
	    q++;
	    len--;
	}
	data->length = len;
	FUNC3(data->data, q, len);
    }
    return 0;
}