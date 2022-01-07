
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_iscache_lru_entry {int section; struct pt_iscache_lru_entry* next; } ;


 int free (struct pt_iscache_lru_entry*) ;
 int pt_section_unmap (int ) ;

__attribute__((used)) static int pt_iscache_lru_free(struct pt_iscache_lru_entry *lru)
{
 while (lru) {
  struct pt_iscache_lru_entry *trash;
  int errcode;

  trash = lru;
  lru = lru->next;

  errcode = pt_section_unmap(trash->section);
  if (errcode < 0)
   return errcode;

  free(trash);
 }

 return 0;
}
