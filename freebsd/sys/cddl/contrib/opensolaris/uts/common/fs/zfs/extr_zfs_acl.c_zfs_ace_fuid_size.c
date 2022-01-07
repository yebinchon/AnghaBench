
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_object_ace_t ;
typedef int zfs_ace_t ;
struct TYPE_2__ {int z_type; int z_flags; } ;
typedef TYPE_1__ zfs_ace_hdr_t ;
typedef int uint16_t ;




 int ACE_EVERYONE ;
 int ACE_OWNER ;


 int ACE_TYPE_FLAGS ;


 int OWNING_GROUP ;

__attribute__((used)) static size_t
zfs_ace_fuid_size(void *acep)
{
 zfs_ace_hdr_t *zacep = acep;
 uint16_t entry_type;

 switch (zacep->z_type) {
 case 133:
 case 132:
 case 130:
 case 131:
  return (sizeof (zfs_object_ace_t));
 case 129:
 case 128:
  entry_type =
      (((zfs_ace_hdr_t *)acep)->z_flags & ACE_TYPE_FLAGS);
  if (entry_type == ACE_OWNER ||
      entry_type == OWNING_GROUP ||
      entry_type == ACE_EVERYONE)
   return (sizeof (zfs_ace_hdr_t));

 default:
  return (sizeof (zfs_ace_t));
 }
}
