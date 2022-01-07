
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_object {int num_attributes; struct st_attr* attrs; } ;
struct TYPE_2__ {scalar_t__ ulValueLen; int * pValue; int type; } ;
struct st_attr {int secret; TYPE_1__ attribute; } ;
typedef int CK_VOID_PTR ;
typedef scalar_t__ CK_ULONG ;
typedef int CK_RV ;
typedef int CK_ATTRIBUTE_TYPE ;


 int CKR_DEVICE_MEMORY ;
 int CKR_OK ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int ,scalar_t__) ;
 struct st_attr* realloc (struct st_attr*,int) ;

__attribute__((used)) static CK_RV
add_object_attribute(struct st_object *o,
       int secret,
       CK_ATTRIBUTE_TYPE type,
       CK_VOID_PTR pValue,
       CK_ULONG ulValueLen)
{
    struct st_attr *a;
    int i;

    i = o->num_attributes;
    a = realloc(o->attrs, (i + 1) * sizeof(o->attrs[0]));
    if (a == ((void*)0))
 return CKR_DEVICE_MEMORY;
    o->attrs = a;
    o->attrs[i].secret = secret;
    o->attrs[i].attribute.type = type;
    o->attrs[i].attribute.pValue = malloc(ulValueLen);
    if (o->attrs[i].attribute.pValue == ((void*)0) && ulValueLen != 0)
 return CKR_DEVICE_MEMORY;
    memcpy(o->attrs[i].attribute.pValue, pValue, ulValueLen);
    o->attrs[i].attribute.ulValueLen = ulValueLen;
    o->num_attributes++;

    return CKR_OK;
}
