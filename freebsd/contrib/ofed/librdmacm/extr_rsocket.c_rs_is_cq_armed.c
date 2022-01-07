
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int cq_armed; } ;



__attribute__((used)) static int rs_is_cq_armed(struct rsocket *rs)
{
 return rs->cq_armed;
}
