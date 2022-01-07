
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* hx509_crypto ;
typedef int hx509_context ;
typedef int heim_octet_string ;
struct TYPE_6__ {TYPE_1__* cipher; } ;
struct TYPE_5__ {int (* set_params ) (int ,int const*,TYPE_2__*,int *) ;} ;


 int stub1 (int ,int const*,TYPE_2__*,int *) ;

int
hx509_crypto_set_params(hx509_context context,
   hx509_crypto crypto,
   const heim_octet_string *param,
   heim_octet_string *ivec)
{
    return (*crypto->cipher->set_params)(context, param, crypto, ivec);
}
