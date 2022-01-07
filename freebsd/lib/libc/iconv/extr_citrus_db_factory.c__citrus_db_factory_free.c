
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_db_factory_entry {int de_data; scalar_t__ de_data_free; int de_key; scalar_t__ de_key_free; int df_entries; } ;
struct _citrus_db_factory {int de_data; scalar_t__ de_data_free; int de_key; scalar_t__ de_key_free; int df_entries; } ;


 struct _citrus_db_factory_entry* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 struct _citrus_db_factory_entry* _region_head (int *) ;
 int de_entry ;
 int free (struct _citrus_db_factory_entry*) ;

void
_citrus_db_factory_free(struct _citrus_db_factory *df)
{
 struct _citrus_db_factory_entry *de;

 while ((de = STAILQ_FIRST(&df->df_entries)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&df->df_entries, de_entry);
  if (de->de_key_free)
   free(_region_head(&de->de_key));
  if (de->de_data_free)
   free(_region_head(&de->de_data));
  free(de);
 }
 free(df);
}
