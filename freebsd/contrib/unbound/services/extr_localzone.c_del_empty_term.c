
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct local_zone {int data; } ;
struct local_data {int * rrsets; } ;


 scalar_t__ dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 scalar_t__ is_terminal (struct local_data*) ;
 struct local_data* lz_find_node (struct local_zone*,int *,size_t,int) ;
 int rbtree_delete (int *,struct local_data*) ;

__attribute__((used)) static void
del_empty_term(struct local_zone* z, struct local_data* d,
 uint8_t* name, size_t len, int labs)
{
 while(d && d->rrsets == ((void*)0) && is_terminal(d)) {


  (void)rbtree_delete(&z->data, d);


  if(dname_is_root(name))
   return;
  dname_remove_label(&name, &len);
  labs--;
  d = lz_find_node(z, name, len, labs);
 }
}
