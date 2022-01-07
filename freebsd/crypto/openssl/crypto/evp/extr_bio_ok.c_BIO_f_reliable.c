
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int const methods_ok ;

const BIO_METHOD *BIO_f_reliable(void)
{
    return &methods_ok;
}
