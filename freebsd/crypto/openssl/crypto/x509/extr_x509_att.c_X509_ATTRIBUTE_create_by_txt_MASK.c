#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ATTRIBUTE ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  X509_F_X509_ATTRIBUTE_CREATE_BY_TXT ; 
 int /*<<< orphan*/  X509_R_INVALID_FIELD_NAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509_ATTRIBUTE *FUNC5(X509_ATTRIBUTE **attr,
                                             const char *atrname, int type,
                                             const unsigned char *bytes,
                                             int len)
{
    ASN1_OBJECT *obj;
    X509_ATTRIBUTE *nattr;

    obj = FUNC2(atrname, 0);
    if (obj == NULL) {
        FUNC4(X509_F_X509_ATTRIBUTE_CREATE_BY_TXT,
                X509_R_INVALID_FIELD_NAME);
        FUNC1(2, "name=", atrname);
        return NULL;
    }
    nattr = FUNC3(attr, obj, type, bytes, len);
    FUNC0(obj);
    return nattr;
}