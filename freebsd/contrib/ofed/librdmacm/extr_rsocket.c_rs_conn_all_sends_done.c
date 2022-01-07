
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ sqe_avail; scalar_t__ sq_size; int state; scalar_t__ ctrl_seqno; scalar_t__ ctrl_max_seqno; } ;


 int rs_connected ;

__attribute__((used)) static int rs_conn_all_sends_done(struct rsocket *rs)
{
 return ((((int) rs->ctrl_max_seqno) - ((int) rs->ctrl_seqno)) +
  rs->sqe_avail == rs->sq_size) ||
        !(rs->state & rs_connected);
}
