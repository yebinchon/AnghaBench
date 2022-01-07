
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptable {int entries; } ;
struct pentry {int entries; } ;


 int STAILQ_EMPTY (int *) ;
 struct ptable* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,struct ptable*) ;
 int free (struct ptable*) ;

void
ptable_close(struct ptable *table)
{
 struct pentry *entry;

 if (table == ((void*)0))
  return;

 while (!STAILQ_EMPTY(&table->entries)) {
  entry = STAILQ_FIRST(&table->entries);
  STAILQ_REMOVE_HEAD(&table->entries, entry);
  free(entry);
 }
 free(table);
}
