
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * object; } ;
typedef TYPE_1__ X509_NAME_ENTRY ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int * OBJ_dup (int const*) ;
 int X509_F_X509_NAME_ENTRY_SET_OBJECT ;
 int X509err (int ,int ) ;

int X509_NAME_ENTRY_set_object(X509_NAME_ENTRY *ne, const ASN1_OBJECT *obj)
{
    if ((ne == ((void*)0)) || (obj == ((void*)0))) {
        X509err(X509_F_X509_NAME_ENTRY_SET_OBJECT,
                ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    ASN1_OBJECT_free(ne->object);
    ne->object = OBJ_dup(obj);
    return ((ne->object == ((void*)0)) ? 0 : 1);
}
