
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct program_bidder {int dummy; } ;
struct archive_read_filter_bidder {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int free_state (struct program_bidder*) ;

__attribute__((used)) static int
program_bidder_free(struct archive_read_filter_bidder *self)
{
 struct program_bidder *state = (struct program_bidder *)self->data;

 free_state(state);
 return (ARCHIVE_OK);
}
