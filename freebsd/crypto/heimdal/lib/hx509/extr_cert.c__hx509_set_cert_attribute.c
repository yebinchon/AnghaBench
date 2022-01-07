
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_2__* hx509_cert_attribute ;
typedef TYPE_3__* hx509_cert ;
typedef int heim_oid ;
typedef int heim_octet_string ;
struct TYPE_8__ {int len; TYPE_2__** val; } ;
struct TYPE_10__ {TYPE_1__ attrs; } ;
struct TYPE_9__ {int oid; int data; } ;


 int ENOMEM ;
 int der_copy_octet_string (int const*,int *) ;
 int der_copy_oid (int const*,int *) ;
 int * hx509_cert_get_attribute (TYPE_3__*,int const*) ;
 int hx509_clear_error_string (int ) ;
 TYPE_2__* malloc (int) ;
 void* realloc (TYPE_2__**,int) ;

int
_hx509_set_cert_attribute(hx509_context context,
     hx509_cert cert,
     const heim_oid *oid,
     const heim_octet_string *attr)
{
    hx509_cert_attribute a;
    void *d;

    if (hx509_cert_get_attribute(cert, oid) != ((void*)0))
 return 0;

    d = realloc(cert->attrs.val,
  sizeof(cert->attrs.val[0]) * (cert->attrs.len + 1));
    if (d == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }
    cert->attrs.val = d;

    a = malloc(sizeof(*a));
    if (a == ((void*)0))
 return ENOMEM;

    der_copy_octet_string(attr, &a->data);
    der_copy_oid(oid, &a->oid);

    cert->attrs.val[cert->attrs.len] = a;
    cert->attrs.len++;

    return 0;
}
