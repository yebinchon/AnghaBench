
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct iso9660 {scalar_t__ volume_block; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ SYSTEM_AREA_BLOCK ;
 scalar_t__ archive_be32dec (unsigned char const*) ;
 scalar_t__ archive_le32dec (unsigned char const*) ;

__attribute__((used)) static int
isVolumePartition(struct iso9660 *iso9660, const unsigned char *h)
{
 int32_t location;


 if (h[0] != 3)
  return (0);


 if (h[6] != 1)
  return (0);

 if (h[7] != 0)
  return (0);

 location = archive_le32dec(h + 72);
 if (location <= SYSTEM_AREA_BLOCK ||
     location >= iso9660->volume_block)
  return (0);
 if ((uint32_t)location != archive_be32dec(h + 76))
  return (0);

 return (1);
}
