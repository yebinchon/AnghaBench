
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int cipher_table ;
 int engine_table_unregister (int *,int *) ;

void ENGINE_unregister_ciphers(ENGINE *e)
{
    engine_table_unregister(&cipher_table, e);
}
