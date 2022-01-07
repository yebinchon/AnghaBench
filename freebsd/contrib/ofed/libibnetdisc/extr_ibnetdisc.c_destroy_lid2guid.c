
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lid2guid; } ;
typedef TYPE_1__ f_internal_t ;


 int g_hash_table_destroy (scalar_t__) ;

void destroy_lid2guid(f_internal_t *f_int)
{
 if (f_int->lid2guid) {
  g_hash_table_destroy(f_int->lid2guid);
 }
}
