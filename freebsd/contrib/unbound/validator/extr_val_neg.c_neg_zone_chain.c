
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct val_neg_zone {int labs; struct val_neg_zone* parent; struct val_neg_zone* name; } ;


 int dname_remove_label (int **,size_t*) ;
 int free (struct val_neg_zone*) ;
 struct val_neg_zone* neg_setup_zone_node (int *,size_t,int,int ) ;

__attribute__((used)) static struct val_neg_zone* neg_zone_chain(
 uint8_t* nm, size_t nm_len, int labs, uint16_t dclass,
 struct val_neg_zone* parent)
{
 int i;
 int tolabs = parent?parent->labs:0;
 struct val_neg_zone* zone, *prev = ((void*)0), *first = ((void*)0);



 for(i=labs; i!=tolabs; i--) {

  zone = neg_setup_zone_node(nm, nm_len, i, dclass);
  if(!zone) {

   struct val_neg_zone* p=first, *np;
   while(p) {
    np = p->parent;
    free(p->name);
    free(p);
    p = np;
   }
   return ((void*)0);
  }
  if(i == labs) {
   first = zone;
  } else {
   prev->parent = zone;
  }

  prev = zone;
  dname_remove_label(&nm, &nm_len);
 }
 return first;
}
