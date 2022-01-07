
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {struct val_neg_data* key; } ;
struct val_neg_data {size_t len; int labs; int name; TYPE_1__ node; } ;


 scalar_t__ calloc (int,int) ;
 int free (struct val_neg_data*) ;
 int memdup (int *,size_t) ;

__attribute__((used)) static struct val_neg_data* neg_setup_data_node(
 uint8_t* nm, size_t nm_len, int labs)
{
 struct val_neg_data* el;
 el = (struct val_neg_data*)calloc(1, sizeof(*el));
 if(!el) {
  return ((void*)0);
 }
 el->node.key = el;
 el->name = memdup(nm, nm_len);
 if(!el->name) {
  free(el);
  return ((void*)0);
 }
 el->len = nm_len;
 el->labs = labs;
 return el;
}
