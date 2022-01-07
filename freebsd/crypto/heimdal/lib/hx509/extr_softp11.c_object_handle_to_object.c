
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_object {scalar_t__ object_handle; } ;
struct TYPE_3__ {int num_objs; struct st_object** objs; } ;
struct TYPE_4__ {TYPE_1__ object; } ;
typedef int CK_RV ;
typedef scalar_t__ CK_OBJECT_HANDLE ;


 int CKR_ARGUMENTS_BAD ;
 int CKR_OK ;
 int HANDLE_OBJECT_ID (scalar_t__) ;
 TYPE_2__ soft_token ;

__attribute__((used)) static CK_RV
object_handle_to_object(CK_OBJECT_HANDLE handle,
   struct st_object **object)
{
    int i = HANDLE_OBJECT_ID(handle);

    *object = ((void*)0);
    if (i >= soft_token.object.num_objs)
 return CKR_ARGUMENTS_BAD;
    if (soft_token.object.objs[i] == ((void*)0))
 return CKR_ARGUMENTS_BAD;
    if (soft_token.object.objs[i]->object_handle != handle)
 return CKR_ARGUMENTS_BAD;
    *object = soft_token.object.objs[i];
    return CKR_OK;
}
