
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct isoent {int dummy; } ;
struct TYPE_6__ {int s; } ;
struct TYPE_7__ {TYPE_4__* boot; TYPE_2__ boot_filename; } ;
struct iso9660 {TYPE_3__ el_torito; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
struct TYPE_8__ {TYPE_1__* file; } ;
struct TYPE_5__ {int boot; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int BOOT_IMAGE ;
 int archive_set_error (int *,int ,char*,int ) ;
 TYPE_4__* isoent_find_entry (struct isoent*,int ) ;

__attribute__((used)) static int
isoent_find_out_boot_file(struct archive_write *a, struct isoent *rootent)
{
 struct iso9660 *iso9660 = a->format_data;


 iso9660->el_torito.boot = isoent_find_entry(rootent,
     iso9660->el_torito.boot_filename.s);
 if (iso9660->el_torito.boot == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Can't find the boot image file ``%s''",
      iso9660->el_torito.boot_filename.s);
  return (ARCHIVE_FATAL);
 }
 iso9660->el_torito.boot->file->boot = BOOT_IMAGE;
 return (ARCHIVE_OK);
}
