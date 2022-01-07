
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rar_br {int dummy; } ;
struct rar {scalar_t__ valid; struct rar_br br; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_4__ {struct archive_read* a; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_2__ IByteIn ;
typedef int Byte ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int archive_set_error (int *,int ,char*) ;
 int rar_br_bits (struct rar_br*,int) ;
 int rar_br_consume (struct rar_br*,int) ;
 int rar_br_read_ahead (struct archive_read*,struct rar_br*,int) ;

__attribute__((used)) static Byte
ppmd_read(void *p)
{
  struct archive_read *a = ((IByteIn*)p)->a;
  struct rar *rar = (struct rar *)(a->format->data);
  struct rar_br *br = &(rar->br);
  Byte b;
  if (!rar_br_read_ahead(a, br, 8))
  {
    archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
                      "Truncated RAR file data");
    rar->valid = 0;
    return 0;
  }
  b = rar_br_bits(br, 8);
  rar_br_consume(br, 8);
  return b;
}
