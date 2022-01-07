
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct program_bidder {scalar_t__ signature_len; int inhibit; int signature; } ;
struct archive_read_filter_bidder {struct program_bidder* data; } ;
struct archive_read_filter {int dummy; } ;


 int INT_MAX ;
 char* __archive_read_filter_ahead (struct archive_read_filter*,scalar_t__,int *) ;
 scalar_t__ memcmp (char const*,int ,scalar_t__) ;

__attribute__((used)) static int
program_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *upstream)
{
 struct program_bidder *state = self->data;
 const char *p;


 if (state->signature_len > 0) {
  p = __archive_read_filter_ahead(upstream,
      state->signature_len, ((void*)0));
  if (p == ((void*)0))
   return (0);

  if (memcmp(p, state->signature, state->signature_len) != 0)
   return (0);
  return ((int)state->signature_len * 8);
 }


 if (state->inhibit)
  return (0);
 state->inhibit = 1;
 return (INT_MAX);
}
