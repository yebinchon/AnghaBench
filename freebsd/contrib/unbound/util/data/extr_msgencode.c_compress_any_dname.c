
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct compress_tree_node {int dummy; } ;
typedef int sldns_buffer ;


 int RETVAL_OK ;
 int RETVAL_OUTMEM ;
 int RETVAL_TRUNC ;
 struct compress_tree_node* compress_tree_lookup (struct compress_tree_node**,int *,int,struct compress_tree_node***) ;
 int compress_tree_store (int *,int,size_t,struct regional*,struct compress_tree_node*,struct compress_tree_node**) ;
 int dname_buffer_write (int *,int *) ;
 size_t sldns_buffer_position (int *) ;
 int write_compressed_dname (int *,int *,int,struct compress_tree_node*) ;

__attribute__((used)) static int
compress_any_dname(uint8_t* dname, sldns_buffer* pkt, int labs,
 struct regional* region, struct compress_tree_node** tree)
{
 struct compress_tree_node* p;
 struct compress_tree_node** insertpt = ((void*)0);
 size_t pos = sldns_buffer_position(pkt);
 if((p = compress_tree_lookup(tree, dname, labs, &insertpt))) {
  if(!write_compressed_dname(pkt, dname, labs, p))
   return RETVAL_TRUNC;
 } else {
  if(!dname_buffer_write(pkt, dname))
   return RETVAL_TRUNC;
 }
 if(!compress_tree_store(dname, labs, pos, region, p, insertpt))
  return RETVAL_OUTMEM;
 return RETVAL_OK;
}
