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
struct st_object {int dummy; } ;
struct TYPE_3__ {scalar_t__ const mechanism; } ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  int /*<<< orphan*/  CK_OBJECT_HANDLE ;
typedef  scalar_t__ CK_MECHANISM_TYPE ;
typedef  TYPE_1__* CK_MECHANISM_PTR ;
typedef  int /*<<< orphan*/  CK_ATTRIBUTE ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_ARGUMENTS_BAD ; 
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct st_object*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct st_object**) ; 

__attribute__((used)) static CK_RV
FUNC3(CK_ATTRIBUTE *attr_match, int attr_match_len,
	   const CK_MECHANISM_TYPE *mechs, int mechs_len,
	   const CK_MECHANISM_PTR pMechanism, CK_OBJECT_HANDLE hKey,
	   struct st_object **o)
{
    CK_RV ret;
    int i;

    *o = NULL;
    if ((ret = FUNC2(hKey, o)) != CKR_OK)
	return ret;

    ret = FUNC1(*o, attr_match, attr_match_len);
    if (!ret) {
	FUNC0("called commonInit on key that doesn't "
			  "support required attr");
	return CKR_ARGUMENTS_BAD;
    }

    for (i = 0; i < mechs_len; i++)
	if (mechs[i] == pMechanism->mechanism)
	    break;
    if (i == mechs_len) {
	FUNC0("called mech (%08lx) not supported\n",
			  pMechanism->mechanism);
	return CKR_ARGUMENTS_BAD;
    }
    return CKR_OK;
}