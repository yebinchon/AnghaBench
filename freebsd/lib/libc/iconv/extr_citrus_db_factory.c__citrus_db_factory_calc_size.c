
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_db_factory {int df_num_entries; int df_total_key_size; scalar_t__ df_total_data_size; } ;


 int _CITRUS_DB_ENTRY_SIZE ;
 int _CITRUS_DB_HEADER_SIZE ;
 size_t ceilto (int) ;

size_t
_citrus_db_factory_calc_size(struct _citrus_db_factory *df)
{
 size_t sz;

 sz = ceilto(_CITRUS_DB_HEADER_SIZE);
 sz += ceilto(_CITRUS_DB_ENTRY_SIZE * df->df_num_entries);
 sz += ceilto(df->df_total_key_size);
 sz += df->df_total_data_size;

 return (sz);
}
