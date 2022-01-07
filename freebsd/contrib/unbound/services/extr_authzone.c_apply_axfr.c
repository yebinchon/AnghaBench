
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct sldns_buffer {int dummy; } ;
struct auth_zone {int data; } ;
struct auth_xfer {int have_zone; int serial; } ;
struct auth_chunk {int len; int data; } ;


 scalar_t__ LDNS_RR_TYPE_SOA ;
 int auth_data_cmp ;
 int auth_data_del ;
 int az_insert_rr_decompress (struct auth_zone*,int ,int ,struct sldns_buffer*,int *,scalar_t__,scalar_t__,int ,int *,scalar_t__,int *) ;
 int chunk_rrlist_end (struct auth_chunk*,int) ;
 int chunk_rrlist_get_current (struct auth_chunk*,int,size_t,int **,scalar_t__*,scalar_t__*,int *,scalar_t__*,int **,size_t*) ;
 int chunk_rrlist_gonext (struct auth_chunk**,int*,size_t*,size_t) ;
 int chunk_rrlist_start (struct auth_xfer*,struct auth_chunk**,int*,size_t*) ;
 int log_err (char*) ;
 int log_rrlist_position (char*,struct auth_chunk*,int *,scalar_t__,size_t) ;
 int rbtree_init (int *,int *) ;
 int sldns_read_uint32 (int *) ;
 int traverse_postorder (int *,int ,int *) ;
 int verbosity ;

__attribute__((used)) static int
apply_axfr(struct auth_xfer* xfr, struct auth_zone* z,
 struct sldns_buffer* scratch_buffer)
{
 struct auth_chunk* rr_chunk;
 int rr_num;
 size_t rr_pos;
 uint8_t* rr_dname, *rr_rdata;
 uint16_t rr_type, rr_class, rr_rdlen;
 uint32_t rr_ttl;
 uint32_t serial = 0;
 size_t rr_nextpos;
 size_t rr_counter = 0;
 int have_end_soa = 0;


 traverse_postorder(&z->data, auth_data_del, ((void*)0));
 rbtree_init(&z->data, &auth_data_cmp);
 xfr->have_zone = 0;
 xfr->serial = 0;




 chunk_rrlist_start(xfr, &rr_chunk, &rr_num, &rr_pos);
 while(!chunk_rrlist_end(rr_chunk, rr_num)) {
  if(!chunk_rrlist_get_current(rr_chunk, rr_num, rr_pos,
   &rr_dname, &rr_type, &rr_class, &rr_ttl, &rr_rdlen,
   &rr_rdata, &rr_nextpos)) {

   return 0;
  }
  if(verbosity>=7) log_rrlist_position("apply_axfr",
   rr_chunk, rr_dname, rr_type, rr_counter);
  if(rr_type == LDNS_RR_TYPE_SOA) {
   if(rr_counter != 0) {

    have_end_soa = 1;
    break;
   }
   if(rr_rdlen < 22) return 0;
   serial = sldns_read_uint32(rr_rdata+rr_rdlen-20);
  }


  if(!az_insert_rr_decompress(z, rr_chunk->data, rr_chunk->len,
   scratch_buffer, rr_dname, rr_type, rr_class, rr_ttl,
   rr_rdata, rr_rdlen, ((void*)0))) {

   return 0;
  }

  rr_counter++;
  chunk_rrlist_gonext(&rr_chunk, &rr_num, &rr_pos, rr_nextpos);
 }
 if(!have_end_soa) {
  log_err("no end SOA record for AXFR");
  return 0;
 }

 xfr->serial = serial;
 xfr->have_zone = 1;
 return 1;
}
