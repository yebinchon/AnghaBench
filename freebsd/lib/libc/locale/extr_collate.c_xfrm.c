
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct xlocale_collate {TYPE_1__* info; } ;
struct TYPE_2__ {int * pri_count; } ;


 int XFRM_MASK ;
 int XFRM_OFFSET ;
 int XFRM_SHIFT ;

__attribute__((used)) static int
xfrm(struct xlocale_collate *table, unsigned char *p, int pri, int pass)
{

 uint32_t val = (uint32_t)table->info->pri_count[pass];
 int nc = 0;

 while (val) {
  *p = (pri & XFRM_MASK) + XFRM_OFFSET;
  pri >>= XFRM_SHIFT;
  val >>= XFRM_SHIFT;
  p++;
  nc++;
 }
 return (nc);
}
