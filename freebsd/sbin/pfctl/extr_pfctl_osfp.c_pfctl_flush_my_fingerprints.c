
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_list {int dummy; } ;
struct name_entry {struct name_list nm_sublist; } ;


 struct name_entry* LIST_FIRST (struct name_list*) ;
 int LIST_REMOVE (struct name_entry*,int ) ;
 scalar_t__ class_count ;
 scalar_t__ fingerprint_count ;
 int free (struct name_entry*) ;
 int nm_entry ;

void
pfctl_flush_my_fingerprints(struct name_list *list)
{
 struct name_entry *nm;

 while ((nm = LIST_FIRST(list)) != ((void*)0)) {
  LIST_REMOVE(nm, nm_entry);
  pfctl_flush_my_fingerprints(&nm->nm_sublist);
  free(nm);
 }
 fingerprint_count = 0;
 class_count = 0;
}
