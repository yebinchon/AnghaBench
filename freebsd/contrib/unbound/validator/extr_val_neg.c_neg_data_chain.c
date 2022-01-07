
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_neg_data {int labs; struct val_neg_data* parent; struct val_neg_data* name; } ;


 int dname_remove_label (int **,size_t*) ;
 int free (struct val_neg_data*) ;
 struct val_neg_data* neg_setup_data_node (int *,size_t,int) ;

__attribute__((used)) static struct val_neg_data* neg_data_chain(
 uint8_t* nm, size_t nm_len, int labs, struct val_neg_data* parent)
{
 int i;
 int tolabs = parent?parent->labs:0;
 struct val_neg_data* el, *first = ((void*)0), *prev = ((void*)0);



 for(i=labs; i!=tolabs; i--) {

  el = neg_setup_data_node(nm, nm_len, i);
  if(!el) {

   struct val_neg_data* p = first, *np;
   while(p) {
    np = p->parent;
    free(p->name);
    free(p);
    p = np;
   }
   return ((void*)0);
  }
  if(i == labs) {
   first = el;
  } else {
   prev->parent = el;
  }


  prev = el;
  dname_remove_label(&nm, &nm_len);
 }
 return first;
}
