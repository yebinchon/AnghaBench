
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* cipher_data ;
 int destroy_cipher_method (int ) ;

__attribute__((used)) static void destroy_all_cipher_methods(void)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(cipher_data); i++)
        destroy_cipher_method(cipher_data[i].nid);
}
