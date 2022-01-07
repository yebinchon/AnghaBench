
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ rmsg_head; scalar_t__ rmsg_tail; } ;



__attribute__((used)) static int rs_have_rdata(struct rsocket *rs)
{
 return (rs->rmsg_head != rs->rmsg_tail);
}
