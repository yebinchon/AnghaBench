#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_object {scalar_t__ object_handle; } ;
struct TYPE_3__ {int num_objs; struct st_object** objs; } ;
struct TYPE_4__ {TYPE_1__ object; } ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  scalar_t__ CK_OBJECT_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_ARGUMENTS_BAD ; 
 int /*<<< orphan*/  CKR_OK ; 
 int FUNC0 (scalar_t__) ; 
 TYPE_2__ soft_token ; 

__attribute__((used)) static CK_RV
FUNC1(CK_OBJECT_HANDLE handle,
			struct st_object **object)
{
    int i = FUNC0(handle);

    *object = NULL;
    if (i >= soft_token.object.num_objs)
	return CKR_ARGUMENTS_BAD;
    if (soft_token.object.objs[i] == NULL)
	return CKR_ARGUMENTS_BAD;
    if (soft_token.object.objs[i]->object_handle != handle)
	return CKR_ARGUMENTS_BAD;
    *object = soft_token.object.objs[i];
    return CKR_OK;
}