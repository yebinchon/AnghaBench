
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int engine_table_cleanup (int *) ;
 int pkey_asn1_meth_table ;

__attribute__((used)) static void engine_unregister_all_pkey_asn1_meths(void)
{
    engine_table_cleanup(&pkey_asn1_meth_table);
}
