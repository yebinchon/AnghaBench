
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_crypto ;
struct TYPE_3__ {int flags; } ;




 int PADDING_FLAGS ;
 int PADDING_NONE ;
 int PADDING_PKCS7 ;
 int _hx509_abort (char*) ;

void
hx509_crypto_set_padding(hx509_crypto crypto, int padding_type)
{
    switch (padding_type) {
    case 128:
 crypto->flags &= ~PADDING_FLAGS;
 crypto->flags |= PADDING_PKCS7;
 break;
    case 129:
 crypto->flags &= ~PADDING_FLAGS;
 crypto->flags |= PADDING_NONE;
 break;
    default:
 _hx509_abort("Invalid padding");
    }
}
