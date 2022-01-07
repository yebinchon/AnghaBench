
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hx509_private_key_ops {int (* get_spki ) (int ,TYPE_1__*,int *) ;} ;
typedef TYPE_1__* hx509_private_key ;
typedef int hx509_context ;
struct TYPE_4__ {struct hx509_private_key_ops* ops; } ;
typedef int SubjectPublicKeyInfo ;


 int HX509_UNIMPLEMENTED_OPERATION ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int stub1 (int ,TYPE_1__*,int *) ;

int
hx509_private_key2SPKI(hx509_context context,
   hx509_private_key private_key,
   SubjectPublicKeyInfo *spki)
{
    const struct hx509_private_key_ops *ops = private_key->ops;
    if (ops == ((void*)0) || ops->get_spki == ((void*)0)) {
 hx509_set_error_string(context, 0, HX509_UNIMPLEMENTED_OPERATION,
          "Private key have no key2SPKI function");
 return HX509_UNIMPLEMENTED_OPERATION;
    }
    return (*ops->get_spki)(context, private_key, spki);
}
