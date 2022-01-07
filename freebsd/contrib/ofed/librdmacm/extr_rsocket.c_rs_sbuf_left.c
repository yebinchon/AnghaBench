
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct rsocket {size_t sbuf_size; TYPE_1__* ssgl; int * sbuf; } ;
struct TYPE_2__ {scalar_t__ addr; } ;



__attribute__((used)) static uint32_t rs_sbuf_left(struct rsocket *rs)
{
 return (uint32_t) (((uint64_t) (uintptr_t) &rs->sbuf[rs->sbuf_size]) -
      rs->ssgl[0].addr);
}
