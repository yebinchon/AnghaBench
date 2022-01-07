
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {unsigned long step; unsigned long mask; } ;


 unsigned long CK_HS_PROBE_L1 ;
 unsigned long CK_HS_PROBE_L1_MASK ;
 unsigned long CK_HS_PROBE_L1_SHIFT ;

__attribute__((used)) static inline unsigned long
ck_hs_map_probe_next(struct ck_hs_map *map,
    unsigned long offset,
    unsigned long h,
    unsigned long level,
    unsigned long probes)
{
 unsigned long r, stride;

 r = (h >> map->step) >> level;
 stride = (r & ~CK_HS_PROBE_L1_MASK) << 1 | (r & CK_HS_PROBE_L1_MASK);

 return (offset + (probes >> CK_HS_PROBE_L1_SHIFT) +
     (stride | CK_HS_PROBE_L1)) & map->mask;
}
