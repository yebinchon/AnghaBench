
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;

__attribute__((used)) static int rar5_has_encrypted_entries(struct archive_read *_a) {
 (void) _a;


 return ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED;
}
