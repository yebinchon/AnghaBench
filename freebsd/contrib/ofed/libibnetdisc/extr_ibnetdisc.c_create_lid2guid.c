
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lid2guid; } ;
typedef TYPE_1__ f_internal_t ;


 int g_direct_equal ;
 int g_direct_hash ;
 int g_hash_table_new_full (int ,int ,int *,int *) ;

void create_lid2guid(f_internal_t *f_int)
{
 f_int->lid2guid = g_hash_table_new_full(g_direct_hash, g_direct_equal,
    ((void*)0), ((void*)0));
}
