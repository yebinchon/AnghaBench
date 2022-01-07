
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_db_factory {void* df_hashfunc_closure; int df_hashfunc; int df_entries; scalar_t__ df_total_data_size; scalar_t__ df_total_key_size; scalar_t__ df_num_entries; } ;
typedef int _citrus_db_hash_func_t ;


 int STAILQ_INIT (int *) ;
 int errno ;
 struct _citrus_db_factory* malloc (int) ;

int
_citrus_db_factory_create(struct _citrus_db_factory **rdf,
    _citrus_db_hash_func_t hashfunc, void *hashfunc_closure)
{
 struct _citrus_db_factory *df;

 df = malloc(sizeof(*df));
 if (df == ((void*)0))
  return (errno);
 df->df_num_entries = 0;
 df->df_total_key_size = df->df_total_data_size = 0;
 STAILQ_INIT(&df->df_entries);
 df->df_hashfunc = hashfunc;
 df->df_hashfunc_closure = hashfunc_closure;

 *rdf = df;

 return (0);
}
