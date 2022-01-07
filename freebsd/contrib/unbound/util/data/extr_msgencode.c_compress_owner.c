
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int dname_len; int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct compress_tree_node {int labs; size_t offset; } ;
typedef int sldns_buffer ;


 int PTR_CREATE (size_t) ;
 size_t PTR_MAX_OFFSET ;
 int RETVAL_OK ;
 int RETVAL_OUTMEM ;
 int RETVAL_TRUNC ;
 struct compress_tree_node* compress_tree_lookup (struct compress_tree_node**,int *,int,struct compress_tree_node***) ;
 int compress_tree_store (int *,int,size_t,struct regional*,struct compress_tree_node*,struct compress_tree_node**) ;
 int htons (int ) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_write (int *,int *,int) ;
 int sldns_buffer_write_u8 (int *,int ) ;
 int write_compressed_dname (int *,int *,int,struct compress_tree_node*) ;

__attribute__((used)) static int
compress_owner(struct ub_packed_rrset_key* key, sldns_buffer* pkt,
 struct regional* region, struct compress_tree_node** tree,
 size_t owner_pos, uint16_t* owner_ptr, int owner_labs)
{
 struct compress_tree_node* p;
 struct compress_tree_node** insertpt = ((void*)0);
 if(!*owner_ptr) {

  if((p = compress_tree_lookup(tree, key->rk.dname,
   owner_labs, &insertpt))) {
   if(p->labs == owner_labs)


    *owner_ptr = htons(PTR_CREATE(p->offset));
   if(!write_compressed_dname(pkt, key->rk.dname,
    owner_labs, p))
    return RETVAL_TRUNC;

   if(sldns_buffer_remaining(pkt) < 4+4+2)
    return RETVAL_TRUNC;
  } else {

   if(sldns_buffer_remaining(pkt) < key->rk.dname_len+4+4+2)
    return RETVAL_TRUNC;
   sldns_buffer_write(pkt, key->rk.dname,
    key->rk.dname_len);
   if(owner_pos <= PTR_MAX_OFFSET)
    *owner_ptr = htons(PTR_CREATE(owner_pos));
  }
  if(!compress_tree_store(key->rk.dname, owner_labs,
   owner_pos, region, p, insertpt))
   return RETVAL_OUTMEM;
 } else {

  if(owner_labs == 1) {
   if(sldns_buffer_remaining(pkt) < 1+4+4+2)
    return RETVAL_TRUNC;
   sldns_buffer_write_u8(pkt, 0);
  } else {
   if(sldns_buffer_remaining(pkt) < 2+4+4+2)
    return RETVAL_TRUNC;
   sldns_buffer_write(pkt, owner_ptr, 2);
  }
 }
 return RETVAL_OK;
}
