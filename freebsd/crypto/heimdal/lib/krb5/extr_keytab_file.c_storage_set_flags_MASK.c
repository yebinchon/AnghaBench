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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
#define  KRB5_KT_VNO_1 129 
#define  KRB5_KT_VNO_2 128 
 int KRB5_STORAGE_HOST_BYTEORDER ; 
 int KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE ; 
 int KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC2(krb5_context context, krb5_storage *sp, int vno)
{
    int flags = 0;
    switch(vno) {
    case KRB5_KT_VNO_1:
	flags |= KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS;
	flags |= KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE;
	flags |= KRB5_STORAGE_HOST_BYTEORDER;
	break;
    case KRB5_KT_VNO_2:
	break;
    default:
	FUNC1(context,
		   "storage_set_flags called with bad vno (%d)", vno);
    }
    FUNC0(sp, flags);
}