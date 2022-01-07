
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curve448_scalar_t ;


 int OPENSSL_cleanse (int ,int) ;

void curve448_scalar_destroy(curve448_scalar_t scalar)
{
    OPENSSL_cleanse(scalar, sizeof(curve448_scalar_t));
}
