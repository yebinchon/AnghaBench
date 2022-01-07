
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
typedef int hx509_key_format_t ;
typedef int hx509_context ;
typedef int heim_octet_string ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* export ) (int ,TYPE_2__* const,int ,int *) ;} ;


 int HX509_UNIMPLEMENTED_OPERATION ;
 int hx509_clear_error_string (int ) ;
 int stub1 (int ,TYPE_2__* const,int ,int *) ;

int
_hx509_private_key_export(hx509_context context,
     const hx509_private_key key,
     hx509_key_format_t format,
     heim_octet_string *data)
{
    if (key->ops->export == ((void*)0)) {
 hx509_clear_error_string(context);
 return HX509_UNIMPLEMENTED_OPERATION;
    }
    return (*key->ops->export)(context, key, format, data);
}
