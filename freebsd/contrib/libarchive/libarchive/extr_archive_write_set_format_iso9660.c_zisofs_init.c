
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {int header_size; int log2_bs; int uncompressed_size; } ;
struct isofile {TYPE_2__ zisofs; int entry; } ;
struct TYPE_8__ {int detect_magic; int making; int block_pointers_cnt; size_t block_pointers_allocated; int remaining; int allzero; void* total_size; void* block_offset; int * block_pointers; scalar_t__ block_pointers_idx; scalar_t__ magic_cnt; } ;
struct TYPE_6__ {int zisofs; int rr; } ;
struct iso9660 {TYPE_5__* cur_file; TYPE_3__ zisofs; TYPE_1__ opt; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
struct TYPE_10__ {TYPE_4__* cur_content; } ;
struct TYPE_9__ {void* size; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int LOGICAL_BLOCK_SIZE ;
 int MULTI_EXTENT_SIZE ;
 int ZF_BLOCK_SIZE ;
 int ZF_HEADER_SIZE ;
 int ZF_LOG2_BS ;
 int archive_entry_size (int ) ;
 int archive_le32enc (int *,int) ;
 int archive_set_error (int *,int ,char*) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int write_null (struct archive_write*,size_t) ;
 int zisofs_init_zstream (struct archive_write*) ;

__attribute__((used)) static int
zisofs_init(struct archive_write *a, struct isofile *file)
{
 struct iso9660 *iso9660 = a->format_data;






 iso9660->zisofs.detect_magic = 0;
 iso9660->zisofs.making = 0;

 if (!iso9660->opt.rr || !iso9660->opt.zisofs)
  return (ARCHIVE_OK);

 if (archive_entry_size(file->entry) >= 24 &&
     archive_entry_size(file->entry) < MULTI_EXTENT_SIZE) {

  iso9660->zisofs.detect_magic = 1;
  iso9660->zisofs.magic_cnt = 0;
 }
 if (!iso9660->zisofs.detect_magic)
  return (ARCHIVE_OK);
 return (ARCHIVE_OK);
}
