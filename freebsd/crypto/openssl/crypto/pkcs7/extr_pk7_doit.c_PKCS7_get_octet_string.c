
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* other; int * data; } ;
struct TYPE_11__ {TYPE_3__ d; } ;
struct TYPE_8__ {int * octet_string; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_4__ PKCS7 ;
typedef int ASN1_OCTET_STRING ;


 scalar_t__ PKCS7_type_is_data (TYPE_4__*) ;
 scalar_t__ PKCS7_type_is_other (TYPE_4__*) ;
 scalar_t__ V_ASN1_OCTET_STRING ;

__attribute__((used)) static ASN1_OCTET_STRING *PKCS7_get_octet_string(PKCS7 *p7)
{
    if (PKCS7_type_is_data(p7))
        return p7->d.data;
    if (PKCS7_type_is_other(p7) && p7->d.other
        && (p7->d.other->type == V_ASN1_OCTET_STRING))
        return p7->d.other->value.octet_string;
    return ((void*)0);
}
