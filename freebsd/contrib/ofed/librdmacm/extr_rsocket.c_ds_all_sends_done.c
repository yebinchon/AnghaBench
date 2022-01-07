
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ sqe_avail; scalar_t__ sq_size; } ;



__attribute__((used)) static int ds_all_sends_done(struct rsocket *rs)
{
 return rs->sqe_avail == rs->sq_size;
}
