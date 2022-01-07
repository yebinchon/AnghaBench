
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ ctrl_max_seqno; scalar_t__ ctrl_seqno; } ;



__attribute__((used)) static inline int rs_2ctrl_avail(struct rsocket *rs)
{
 return (int)((rs->ctrl_seqno + 1) - rs->ctrl_max_seqno) < 0;
}
