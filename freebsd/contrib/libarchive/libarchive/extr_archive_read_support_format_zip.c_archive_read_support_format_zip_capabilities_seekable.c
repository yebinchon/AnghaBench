
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_DATA ;
 int ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_METADATA ;

__attribute__((used)) static int
archive_read_support_format_zip_capabilities_seekable(struct archive_read * a)
{
 (void)a;
 return (ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_DATA |
  ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_METADATA);
}
