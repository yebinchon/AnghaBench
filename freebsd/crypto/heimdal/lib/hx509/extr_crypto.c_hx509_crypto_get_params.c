
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
struct TYPE_5__ {int (* get_params ) (int ,TYPE_2__*,int const*,int *) ;} ;


 int stub1 (int ,TYPE_2__*,int const*,int *) ;

int
hx509_crypto_get_params(hx509_context context,
   hx509_crypto crypto,
   const heim_octet_string *ivec,
   heim_octet_string *param)
{
    return (*crypto->cipher->get_params)(context, crypto, ivec, param);
}
