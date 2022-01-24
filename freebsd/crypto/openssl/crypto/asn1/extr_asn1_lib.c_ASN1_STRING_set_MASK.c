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
struct TYPE_3__ {int length; unsigned char* data; } ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_STRING_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 unsigned char* FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char const*,int) ; 
 int FUNC3 (char const*) ; 

int FUNC4(ASN1_STRING *str, const void *_data, int len)
{
    unsigned char *c;
    const char *data = _data;

    if (len < 0) {
        if (data == NULL)
            return 0;
        else
            len = FUNC3(data);
    }
    if ((str->length <= len) || (str->data == NULL)) {
        c = str->data;
        str->data = FUNC1(c, len + 1);
        if (str->data == NULL) {
            FUNC0(ASN1_F_ASN1_STRING_SET, ERR_R_MALLOC_FAILURE);
            str->data = c;
            return 0;
        }
    }
    str->length = len;
    if (data != NULL) {
        FUNC2(str->data, data, len);
        /* an allowance for strings :-) */
        str->data[len] = '\0';
    }
    return 1;
}