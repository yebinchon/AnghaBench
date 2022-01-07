
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; } ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 int assert (int ) ;
 TYPE_1__* cipher_data ;

__attribute__((used)) static size_t get_cipher_data_index(int nid)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(cipher_data); i++)
        if (nid == cipher_data[i].nid)
            return i;






    assert("Code that never should be reached" == ((void*)0));
    return -1;
}
