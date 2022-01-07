
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int sqe_avail; } ;



__attribute__((used)) static int ds_can_send(struct rsocket *rs)
{
 return rs->sqe_avail;
}
