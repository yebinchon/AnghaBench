
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct isoent* first; } ;
struct isoent {struct isoent* next; TYPE_1__ extr_rec_list; struct isoent* identifier; struct isoent* children_sorted; } ;
struct extr_rec {struct extr_rec* next; TYPE_1__ extr_rec_list; struct extr_rec* identifier; struct extr_rec* children_sorted; } ;


 int free (struct isoent*) ;

__attribute__((used)) static void
_isoent_free(struct isoent *isoent)
{
 struct extr_rec *er, *er_next;

 free(isoent->children_sorted);
 free(isoent->identifier);
 er = isoent->extr_rec_list.first;
 while (er != ((void*)0)) {
  er_next = er->next;
  free(er);
  er = er_next;
 }
 free(isoent);
}
