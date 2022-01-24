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
struct TYPE_3__ {int length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  scalar_t__ Der_type ;
typedef  scalar_t__ Der_class ;

/* Variables and functions */
 int ASN1_BAD_ID ; 
 scalar_t__ ASN1_C_UNIV ; 
 int ASN1_INDEF_OVERRUN ; 
 int ASN1_OVERRUN ; 
 int ENOMEM ; 
 scalar_t__ PRIM ; 
 unsigned int UT_EndOfContent ; 
 unsigned int UT_OctetString ; 
 int FUNC0 (unsigned char const*,size_t,size_t*,size_t*) ; 
 int FUNC1 (unsigned char const*,size_t,scalar_t__*,scalar_t__*,unsigned int*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 

int
FUNC5 (const unsigned char *p, size_t len,
			  heim_octet_string *data, size_t *size)
{
    int e;
    Der_type type;
    Der_class class;
    unsigned int tag, depth = 0;
    size_t l, datalen, oldlen = len;

    data->length = 0;
    data->data = NULL;

    while (len) {
	e = FUNC1 (p, len, &class, &type, &tag, &l);
	if (e) goto out;
	if (class != ASN1_C_UNIV) {
	    e = ASN1_BAD_ID;
	    goto out;
	}
	if (type == PRIM && tag == UT_EndOfContent) {
	    if (depth == 0)
		break;
	    depth--;
	}
	if (tag != UT_OctetString) {
	    e = ASN1_BAD_ID;
	    goto out;
	}

	p += l;
	len -= l;
	e = FUNC0 (p, len, &datalen, &l);
	if (e) goto out;
	p += l;
	len -= l;

	if (datalen > len)
	    return ASN1_OVERRUN;

	if (type == PRIM) {
	    void *ptr;

	    ptr = FUNC4(data->data, data->length + datalen);
	    if (ptr == NULL) {
		e = ENOMEM;
		goto out;
	    }
	    data->data = ptr;
	    FUNC3(((unsigned char *)data->data) + data->length, p, datalen);
	    data->length += datalen;
	} else
	    depth++;

	p += datalen;
	len -= datalen;
    }
    if (depth != 0)
	return ASN1_INDEF_OVERRUN;
    if(size) *size = oldlen - len;
    return 0;
 out:
    FUNC2(data->data);
    data->data = NULL;
    data->length = 0;
    return e;
}