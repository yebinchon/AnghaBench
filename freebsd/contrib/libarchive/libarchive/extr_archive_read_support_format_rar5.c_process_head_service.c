
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int service; } ;
struct rar5 {TYPE_1__ file; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_RETRY ;
 int process_head_file (struct archive_read*,struct rar5*,struct archive_entry*,size_t) ;
 int rar5_read_data_skip (struct archive_read*) ;

__attribute__((used)) static int process_head_service(struct archive_read* a, struct rar5* rar,
    struct archive_entry* entry, size_t block_flags)
{

 int ret = process_head_file(a, rar, entry, block_flags);
 if(ret != ARCHIVE_OK)
  return ret;

 rar->file.service = 1;




 ret = rar5_read_data_skip(a);
 if(ret != ARCHIVE_OK)
  return ret;


 return ARCHIVE_RETRY;
}
