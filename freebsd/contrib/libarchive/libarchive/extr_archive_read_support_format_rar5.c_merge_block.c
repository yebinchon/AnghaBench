
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * push_buf; } ;
struct TYPE_5__ {int bytes_remaining; } ;
struct TYPE_4__ {int switch_multivolume; } ;
struct rar5 {TYPE_3__ vol; scalar_t__ merge_mode; TYPE_2__ file; TYPE_1__ cstate; } ;
struct archive_read {int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int advance_multivolume (struct archive_read*) ;
 int archive_set_error (int *,int ,char*) ;
 int consume (struct archive_read*,int) ;
 int free (void*) ;
 struct rar5* get_context (struct archive_read*) ;
 int * malloc (int) ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;
 int rar5_min (int,int) ;
 int read_ahead (struct archive_read*,int,int const**) ;

__attribute__((used)) static int merge_block(struct archive_read* a, ssize_t block_size,
    const uint8_t** p)
{
 struct rar5* rar = get_context(a);
 ssize_t cur_block_size, partial_offset = 0;
 const uint8_t* lp;
 int ret;

 if(rar->merge_mode) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "Recursive merge is not allowed");

  return ARCHIVE_FATAL;
 }


 rar->cstate.switch_multivolume = 1;


 if(rar->vol.push_buf)
  free((void*) rar->vol.push_buf);





 rar->vol.push_buf = malloc(block_size + 8);
 if(!rar->vol.push_buf) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory for a merge block buffer.");
  return ARCHIVE_FATAL;
 }



 memset(&rar->vol.push_buf[block_size], 0, 8);





 while(1) {


  cur_block_size = rar5_min(rar->file.bytes_remaining,
      block_size - partial_offset);

  if(cur_block_size == 0) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Encountered block size == 0 during block merge");
   return ARCHIVE_FATAL;
  }

  if(!read_ahead(a, cur_block_size, &lp))
   return ARCHIVE_EOF;



  if(partial_offset + cur_block_size > block_size) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_PROGRAMMER,
       "Consumed too much data when merging blocks.");
   return ARCHIVE_FATAL;
  }




  memcpy(&rar->vol.push_buf[partial_offset], lp, cur_block_size);


  if(ARCHIVE_OK != consume(a, cur_block_size))
   return ARCHIVE_EOF;



  partial_offset += cur_block_size;
  rar->file.bytes_remaining -= cur_block_size;




  if(partial_offset == block_size) {
   break;
  }



  if(rar->file.bytes_remaining == 0) {
   rar->merge_mode++;
   ret = advance_multivolume(a);
   rar->merge_mode--;
   if(ret != ARCHIVE_OK) {
    return ret;
   }
  }
 }

 *p = rar->vol.push_buf;




 return ARCHIVE_OK;
}
