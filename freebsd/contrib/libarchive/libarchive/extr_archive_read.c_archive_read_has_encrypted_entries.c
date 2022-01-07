
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int (* has_encrypted_entries ) (struct archive_read*) ;} ;


 int ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_DATA ;
 int ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_METADATA ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int archive_read_format_capabilities (struct archive*) ;
 int stub1 (struct archive_read*) ;

int
archive_read_has_encrypted_entries(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 int format_supports_encryption = archive_read_format_capabilities(_a)
   & (ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_DATA | ARCHIVE_READ_FORMAT_CAPS_ENCRYPT_METADATA);

 if (!_a || !format_supports_encryption) {

  return ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED;
 }


 if (a->format && a->format->has_encrypted_entries) {
  return (a->format->has_encrypted_entries)(a);
 }


 return ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW;
}
