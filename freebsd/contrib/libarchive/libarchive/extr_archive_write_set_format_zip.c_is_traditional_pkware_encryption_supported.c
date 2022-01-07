
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int key ;


 scalar_t__ ARCHIVE_OK ;
 int TRAD_HEADER_SIZE ;
 scalar_t__ archive_random (int *,int) ;

__attribute__((used)) static int
is_traditional_pkware_encryption_supported(void)
{
 uint8_t key[TRAD_HEADER_SIZE];

 if (archive_random(key, sizeof(key)-1) != ARCHIVE_OK)
  return (0);
 return (1);
}
