
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct program_bidder {size_t signature_len; int signature; } ;
struct archive_read_filter_bidder {int free; int * options; int init; int bid; struct program_bidder* data; } ;


 int ARCHIVE_OK ;
 int malloc (size_t) ;
 int memcpy (int ,void const*,size_t) ;
 int program_bidder_bid ;
 int program_bidder_free ;
 int program_bidder_init ;

__attribute__((used)) static int
set_bidder_signature(struct archive_read_filter_bidder *bidder,
    struct program_bidder *state, const void *signature, size_t signature_len)
{

 if (signature != ((void*)0) && signature_len > 0) {
  state->signature_len = signature_len;
  state->signature = malloc(signature_len);
  memcpy(state->signature, signature, signature_len);
 }




 bidder->data = state;
 bidder->bid = program_bidder_bid;
 bidder->init = program_bidder_init;
 bidder->options = ((void*)0);
 bidder->free = program_bidder_free;
 return (ARCHIVE_OK);
}
