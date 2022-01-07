
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct sldns_buffer {int dummy; } ;
struct auth_zone {int dummy; } ;
struct auth_xfer {scalar_t__ serial; } ;
struct auth_chunk {int len; int data; } ;


 scalar_t__ LDNS_RR_TYPE_SOA ;
 int VERB_ALGO ;
 int az_insert_rr_decompress (struct auth_zone*,int ,int ,struct sldns_buffer*,int *,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__,int*) ;
 int az_remove_rr_decompress (struct auth_zone*,int ,int ,struct sldns_buffer*,int *,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__,int*) ;
 int chunk_rrlist_end (struct auth_chunk*,int) ;
 int chunk_rrlist_get_current (struct auth_chunk*,int,size_t,int **,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int **,size_t*) ;
 int chunk_rrlist_gonext (struct auth_chunk**,int*,size_t*,size_t) ;
 int chunk_rrlist_start (struct auth_xfer*,struct auth_chunk**,int*,size_t*) ;
 int ixfr_start_serial (struct auth_chunk*,int,size_t,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,size_t,scalar_t__,scalar_t__) ;
 int log_rrlist_position (char*,struct auth_chunk*,int *,scalar_t__,size_t) ;
 scalar_t__ sldns_read_uint32 (int *) ;
 int verbose (int ,char*) ;
 int verbosity ;

__attribute__((used)) static int
apply_ixfr(struct auth_xfer* xfr, struct auth_zone* z,
 struct sldns_buffer* scratch_buffer)
{
 struct auth_chunk* rr_chunk;
 int rr_num;
 size_t rr_pos;
 uint8_t* rr_dname, *rr_rdata;
 uint16_t rr_type, rr_class, rr_rdlen;
 uint32_t rr_ttl;
 size_t rr_nextpos;
 int have_transfer_serial = 0;
 uint32_t transfer_serial = 0;
 size_t rr_counter = 0;
 int delmode = 0;
 int softfail = 0;


 chunk_rrlist_start(xfr, &rr_chunk, &rr_num, &rr_pos);
 while(!chunk_rrlist_end(rr_chunk, rr_num)) {
  if(!chunk_rrlist_get_current(rr_chunk, rr_num, rr_pos,
   &rr_dname, &rr_type, &rr_class, &rr_ttl, &rr_rdlen,
   &rr_rdata, &rr_nextpos)) {

   return 0;
  }
  if(verbosity>=7) log_rrlist_position("apply ixfr",
   rr_chunk, rr_dname, rr_type, rr_counter);

  if(rr_counter == 0 && rr_type != LDNS_RR_TYPE_SOA)
   return 0;
  if(rr_counter == 1 && rr_type != LDNS_RR_TYPE_SOA) {



   return 0;
  }
  if(rr_type == LDNS_RR_TYPE_SOA) {
   uint32_t serial;
   if(rr_rdlen < 22) return 0;
   serial = sldns_read_uint32(rr_rdata+rr_rdlen-20);
   if(have_transfer_serial == 0) {
    have_transfer_serial = 1;
    transfer_serial = serial;
    delmode = 1;

    if(!ixfr_start_serial(rr_chunk, rr_num, rr_pos,
     rr_dname, rr_type, rr_class, rr_ttl,
     rr_rdlen, rr_rdata, rr_nextpos,
     transfer_serial, xfr->serial)) {
     return 0;
    }
   } else if(transfer_serial == serial) {
    have_transfer_serial++;
    if(rr_counter == 1) {



     return 0;
    }
    if(have_transfer_serial == 3) {
     xfr->serial = transfer_serial;
     break;
    }
   }





   delmode = !delmode;
  }




  if(verbosity>=7) log_rrlist_position((delmode?"del":"add"),
   rr_chunk, rr_dname, rr_type, rr_counter);
  if(delmode) {

   int nonexist = 0;
   if(!az_remove_rr_decompress(z, rr_chunk->data,
    rr_chunk->len, scratch_buffer, rr_dname,
    rr_type, rr_class, rr_ttl, rr_rdata, rr_rdlen,
    &nonexist)) {

    return 0;
   }
   if(nonexist) {

    if(verbosity>=4) log_rrlist_position(
     "IXFR error nonexistent RR",
     rr_chunk, rr_dname, rr_type, rr_counter);
    softfail = 1;
   }
  } else if(rr_counter != 0) {



   int duplicate = 0;

   if(!az_insert_rr_decompress(z, rr_chunk->data,
    rr_chunk->len, scratch_buffer, rr_dname,
    rr_type, rr_class, rr_ttl, rr_rdata, rr_rdlen,
    &duplicate)) {

    return 0;
   }
   if(duplicate) {

    if(verbosity>=4) log_rrlist_position(
     "IXFR error duplicate RR",
     rr_chunk, rr_dname, rr_type, rr_counter);
    softfail = 1;
   }
  }

  rr_counter++;
  chunk_rrlist_gonext(&rr_chunk, &rr_num, &rr_pos, rr_nextpos);
 }
 if(softfail) {
  verbose(VERB_ALGO, "IXFR did not apply cleanly, fetching full zone");
  return 0;
 }
 return 1;
}
