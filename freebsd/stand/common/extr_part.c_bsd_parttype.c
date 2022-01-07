
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum partition_type { ____Placeholder_partition_type } partition_type ;






 int PART_FREEBSD_SWAP ;
 int PART_FREEBSD_UFS ;
 int PART_FREEBSD_VINUM ;
 int PART_FREEBSD_ZFS ;
 int PART_UNKNOWN ;

__attribute__((used)) static enum partition_type
bsd_parttype(uint8_t type)
{

 switch (type) {
 case 130:
  return (PART_FREEBSD_SWAP);
 case 131:
  return (PART_FREEBSD_UFS);
 case 129:
  return (PART_FREEBSD_VINUM);
 case 128:
  return (PART_FREEBSD_ZFS);
 }
 return (PART_UNKNOWN);
}
