
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_default {struct label_default* ld_labels; struct label_default* ld_name; } ;


 struct label_default* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct label_default*,int ) ;
 int free (struct label_default*) ;
 int label_default_head ;
 int ld_entries ;

__attribute__((used)) static void
mac_destroy_labels(void)
{
 struct label_default *ld;

 while ((ld = LIST_FIRST(&label_default_head))) {
  free(ld->ld_name);
  free(ld->ld_labels);
  LIST_REMOVE(ld, ld_entries);
  free(ld);
 }
}
