
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bytes_remaining; } ;
struct rar5 {TYPE_1__ file; scalar_t__ merge_mode; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_OK ;
 int consume (struct archive_read*,scalar_t__) ;
 struct rar5* get_context (struct archive_read*) ;
 int rar5_read_data_skip (struct archive_read*) ;

__attribute__((used)) static int skip_unprocessed_bytes(struct archive_read* a) {
 struct rar5* rar = get_context(a);
 int ret;

 if(rar->file.bytes_remaining) {





  if(rar->merge_mode) {




   ret = consume(a, rar->file.bytes_remaining);
   if(ret != ARCHIVE_OK) {
    return ret;
   }
   rar->file.bytes_remaining = 0;
  } else {



   ret = rar5_read_data_skip(a);
   if(ret != ARCHIVE_OK) {
    return ret;
   }
  }
 }

 return ARCHIVE_OK;
}
