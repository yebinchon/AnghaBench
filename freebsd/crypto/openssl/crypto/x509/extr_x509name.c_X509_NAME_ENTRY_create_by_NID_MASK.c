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
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  X509_F_X509_NAME_ENTRY_CREATE_BY_NID ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  X509_R_UNKNOWN_NID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509_NAME_ENTRY *FUNC4(X509_NAME_ENTRY **ne, int nid,
                                               int type,
                                               const unsigned char *bytes,
                                               int len)
{
    ASN1_OBJECT *obj;
    X509_NAME_ENTRY *nentry;

    obj = FUNC1(nid);
    if (obj == NULL) {
        FUNC3(X509_F_X509_NAME_ENTRY_CREATE_BY_NID, X509_R_UNKNOWN_NID);
        return NULL;
    }
    nentry = FUNC2(ne, obj, type, bytes, len);
    FUNC0(obj);
    return nentry;
}