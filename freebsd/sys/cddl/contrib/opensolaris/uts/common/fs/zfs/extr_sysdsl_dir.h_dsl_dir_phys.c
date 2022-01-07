
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dd_dbuf; } ;
typedef TYPE_2__ dsl_dir_t ;
typedef int dsl_dir_phys_t ;
struct TYPE_4__ {int * db_data; } ;



inline dsl_dir_phys_t *
dsl_dir_phys(dsl_dir_t *dd)
{
 return (dd->dd_dbuf->db_data);
}
