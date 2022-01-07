
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int * engine_table_select (int *,int) ;
 int pkey_meth_table ;

ENGINE *ENGINE_get_pkey_meth_engine(int nid)
{
    return engine_table_select(&pkey_meth_table, nid);
}
