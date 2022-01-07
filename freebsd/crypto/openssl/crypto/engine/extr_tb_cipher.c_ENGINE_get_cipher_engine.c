
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int cipher_table ;
 int * engine_table_select (int *,int) ;

ENGINE *ENGINE_get_cipher_engine(int nid)
{
    return engine_table_select(&cipher_table, nid);
}
