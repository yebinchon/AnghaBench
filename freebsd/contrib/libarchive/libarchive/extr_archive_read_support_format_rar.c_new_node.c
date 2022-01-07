
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman_tree_node {int* branches; } ;
struct huffman_code {int numallocatedentries; int numentries; struct huffman_tree_node* tree; } ;


 void* realloc (struct huffman_tree_node*,int) ;

__attribute__((used)) static int
new_node(struct huffman_code *code)
{
  void *new_tree;
  if (code->numallocatedentries == code->numentries) {
    int new_num_entries = 256;
    if (code->numentries > 0) {
        new_num_entries = code->numentries * 2;
    }
    new_tree = realloc(code->tree, new_num_entries * sizeof(*code->tree));
    if (new_tree == ((void*)0))
        return (-1);
    code->tree = (struct huffman_tree_node *)new_tree;
    code->numallocatedentries = new_num_entries;
  }
  code->tree[code->numentries].branches[0] = -1;
  code->tree[code->numentries].branches[1] = -2;
  return 1;
}
