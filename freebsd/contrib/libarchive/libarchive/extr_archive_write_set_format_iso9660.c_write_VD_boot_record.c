
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* catalog; } ;
struct iso9660 {TYPE_4__ el_torito; } ;
struct archive_write {struct iso9660* format_data; } ;
struct TYPE_7__ {TYPE_2__* file; } ;
struct TYPE_5__ {int location; } ;
struct TYPE_6__ {TYPE_1__ content; } ;


 int LOGICAL_BLOCK_SIZE ;
 int VDT_BOOT_RECORD ;
 int memcpy (unsigned char*,char*,int) ;
 int set_VD_bp (unsigned char*,int ,int) ;
 int set_num_731 (unsigned char*,int ) ;
 int set_unused_field_bp (unsigned char*,int,int) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,int) ;

__attribute__((used)) static int
write_VD_boot_record(struct archive_write *a)
{
 struct iso9660 *iso9660;
 unsigned char *bp;

 iso9660 = a->format_data;
 bp = wb_buffptr(a) -1;

 set_VD_bp(bp, VDT_BOOT_RECORD, 1);

 memcpy(bp+8, "EL TORITO SPECIFICATION", 23);
 set_unused_field_bp(bp, 8+23, 39);

 set_unused_field_bp(bp, 40, 71);

 set_num_731(bp+72,
     iso9660->el_torito.catalog->file->content.location);

 set_unused_field_bp(bp, 76, LOGICAL_BLOCK_SIZE);

 return (wb_consume(a, LOGICAL_BLOCK_SIZE));
}
