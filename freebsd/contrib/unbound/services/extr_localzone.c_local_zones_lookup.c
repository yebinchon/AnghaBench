
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct local_zones {int dummy; } ;
struct local_zone {int dummy; } ;


 struct local_zone* local_zones_tags_lookup (struct local_zones*,int *,size_t,int,int ,int ,int *,int ,int) ;

struct local_zone*
local_zones_lookup(struct local_zones* zones,
        uint8_t* name, size_t len, int labs, uint16_t dclass, uint16_t dtype)
{
 return local_zones_tags_lookup(zones, name, len, labs,
  dclass, dtype, ((void*)0), 0, 1);
}
