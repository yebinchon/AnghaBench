
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct regional {int dummy; } ;
struct compress_tree_node {int labs; struct compress_tree_node* parent; struct compress_tree_node* right; } ;


 size_t PTR_MAX_OFFSET ;
 struct compress_tree_node* compress_tree_newnode (scalar_t__*,int,size_t,struct regional*) ;
 int log_assert (int) ;

__attribute__((used)) static int
compress_tree_store(uint8_t* dname, int labs, size_t offset,
 struct regional* region, struct compress_tree_node* closest,
 struct compress_tree_node** insertpt)
{
 uint8_t lablen;
 struct compress_tree_node* newnode;
 struct compress_tree_node* prevnode = ((void*)0);
 int uplabs = labs-1;
 if(closest) uplabs = labs - closest->labs;
 log_assert(uplabs >= 0);

 while(uplabs--) {
  if(offset > PTR_MAX_OFFSET) {

   return 1;
  }
  if(!(newnode = compress_tree_newnode(dname, labs, offset,
   region))) {

   return 0;
  }

  if(prevnode) {


   newnode->right = prevnode;
   prevnode->parent = newnode;
  }


  lablen = *dname++;
  dname += lablen;
  offset += lablen+1;
  prevnode = newnode;
  labs--;
 }

 if(prevnode) {
  *insertpt = prevnode;
  prevnode->parent = closest;
 }
 return 1;
}
