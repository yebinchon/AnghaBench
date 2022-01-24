#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* value; int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ X509_NAME_ENTRY ;
struct TYPE_6__ {int type; } ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,int) ; 
 int FUNC1 (TYPE_3__*,unsigned char const*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__**,unsigned char const*,int,int,int /*<<< orphan*/ ) ; 
 int MBSTRING_FLAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int V_ASN1_APP_CHOOSE ; 
 int V_ASN1_UNDEF ; 
 int FUNC4 (char const*) ; 

int FUNC5(X509_NAME_ENTRY *ne, int type,
                             const unsigned char *bytes, int len)
{
    int i;

    if ((ne == NULL) || ((bytes == NULL) && (len != 0)))
        return 0;
    if ((type > 0) && (type & MBSTRING_FLAG))
        return FUNC2(&ne->value, bytes,
                                      len, type,
                                      FUNC3(ne->object)) ? 1 : 0;
    if (len < 0)
        len = FUNC4((const char *)bytes);
    i = FUNC1(ne->value, bytes, len);
    if (!i)
        return 0;
    if (type != V_ASN1_UNDEF) {
        if (type == V_ASN1_APP_CHOOSE)
            ne->value->type = FUNC0(bytes, len);
        else
            ne->value->type = type;
    }
    return 1;
}