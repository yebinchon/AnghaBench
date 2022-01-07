
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * object; } ;
typedef TYPE_1__ X509_ATTRIBUTE ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int * OBJ_dup (int const*) ;

int X509_ATTRIBUTE_set1_object(X509_ATTRIBUTE *attr, const ASN1_OBJECT *obj)
{
    if ((attr == ((void*)0)) || (obj == ((void*)0)))
        return 0;
    ASN1_OBJECT_free(attr->object);
    attr->object = OBJ_dup(obj);
    return attr->object != ((void*)0);
}
