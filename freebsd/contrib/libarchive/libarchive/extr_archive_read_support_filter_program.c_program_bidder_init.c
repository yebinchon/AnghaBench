
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct program_bidder {int cmd; } ;
struct archive_read_filter {TYPE_1__* bidder; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int __archive_read_program (struct archive_read_filter*,int ) ;

__attribute__((used)) static int
program_bidder_init(struct archive_read_filter *self)
{
 struct program_bidder *bidder_state;

 bidder_state = (struct program_bidder *)self->bidder->data;
 return (__archive_read_program(self, bidder_state->cmd));
}
