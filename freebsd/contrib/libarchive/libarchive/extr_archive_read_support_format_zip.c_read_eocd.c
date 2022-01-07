
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip {scalar_t__ central_directory_offset; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ archive_le16dec (char const*) ;
 scalar_t__ archive_le32dec (char const*) ;

__attribute__((used)) static int
read_eocd(struct zip *zip, const char *p, int64_t current_offset)
{



 if (archive_le16dec(p + 4) != 0)
  return 0;

 if (archive_le16dec(p + 4) != archive_le16dec(p + 6))
  return 0;

 if (archive_le16dec(p + 10) != archive_le16dec(p + 8))
  return 0;

 if (archive_le32dec(p + 16) + archive_le32dec(p + 12)
     > current_offset)
  return 0;


 zip->central_directory_offset = archive_le32dec(p + 16);





 return 32;
}
