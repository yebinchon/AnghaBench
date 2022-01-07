
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rar {int has_encrypted_entries; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;

__attribute__((used)) static int
archive_read_format_rar_has_encrypted_entries(struct archive_read *_a)
{
 if (_a && _a->format) {
  struct rar * rar = (struct rar *)_a->format->data;
  if (rar) {
   return rar->has_encrypted_entries;
  }
 }
 return ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW;
}
