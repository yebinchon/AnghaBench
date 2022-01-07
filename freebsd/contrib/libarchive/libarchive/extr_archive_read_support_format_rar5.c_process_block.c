
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_8__ {scalar_t__ switch_multivolume; scalar_t__ cur_block_size; scalar_t__ block_parsing_finished; int const* block_buf; } ;
struct TYPE_7__ {scalar_t__ bytes_remaining; } ;
struct TYPE_6__ {scalar_t__ bit_addr; scalar_t__ in_addr; } ;
struct TYPE_5__ {scalar_t__ volume; } ;
struct rar5 {TYPE_4__ cstate; TYPE_3__ file; int last_block_hdr; TYPE_2__ bits; TYPE_1__ main; } ;
struct compressed_block_header {int dummy; } ;
struct archive_read {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int advance_multivolume (struct archive_read*) ;
 scalar_t__ bf_byte_count (int *) ;
 scalar_t__ bf_is_table_present (int *) ;
 int consume (struct archive_read*,scalar_t__) ;
 int do_uncompress_block (struct archive_read*,int const*) ;
 struct rar5* get_context (struct archive_read*) ;
 int merge_block (struct archive_read*,scalar_t__,int const**) ;
 int parse_block_header (struct archive_read*,int const*,scalar_t__*,int *) ;
 int parse_tables (struct archive_read*,struct rar5*,int const*) ;
 scalar_t__ rar5_min (scalar_t__,scalar_t__) ;
 int read_ahead (struct archive_read*,int,int const**) ;

__attribute__((used)) static int process_block(struct archive_read* a) {
 const uint8_t* p;
 struct rar5* rar = get_context(a);
 int ret;



 if(rar->main.volume && rar->file.bytes_remaining == 0) {
  ret = advance_multivolume(a);
  if(ret != ARCHIVE_OK)
   return ret;
 }

 if(rar->cstate.block_parsing_finished) {
  ssize_t block_size;


  if(!read_ahead(a, 6, &p)) {

   return ARCHIVE_EOF;
  }
  ret = parse_block_header(a, p, &block_size,
      &rar->last_block_hdr);
  if(ret != ARCHIVE_OK) {
   return ret;
  }



  ssize_t to_skip = sizeof(struct compressed_block_header) +
   bf_byte_count(&rar->last_block_hdr) + 1;

  if(ARCHIVE_OK != consume(a, to_skip))
   return ARCHIVE_EOF;

  rar->file.bytes_remaining -= to_skip;







  ssize_t cur_block_size =
   rar5_min(rar->file.bytes_remaining, block_size);

  if(block_size > rar->file.bytes_remaining) {
   ret = merge_block(a, block_size, &p);
   if(ret != ARCHIVE_OK) {
    return ret;
   }

   cur_block_size = block_size;






  } else {
   rar->cstate.switch_multivolume = 0;





   if(!read_ahead(a, 4 + cur_block_size, &p)) {

    return ARCHIVE_EOF;
   }
  }

  rar->cstate.block_buf = p;
  rar->cstate.cur_block_size = cur_block_size;
  rar->cstate.block_parsing_finished = 0;

  rar->bits.in_addr = 0;
  rar->bits.bit_addr = 0;

  if(bf_is_table_present(&rar->last_block_hdr)) {

   ret = parse_tables(a, rar, p);
   if(ret != ARCHIVE_OK) {


    return ret;
   }
  }
 } else {

  p = rar->cstate.block_buf;
 }






 ret = do_uncompress_block(a, p);
 if(ret != ARCHIVE_OK) {
  return ret;
 }

 if(rar->cstate.block_parsing_finished &&
     rar->cstate.switch_multivolume == 0 &&
     rar->cstate.cur_block_size > 0)
 {



  if(ARCHIVE_OK != consume(a, rar->cstate.cur_block_size))
   return ARCHIVE_FATAL;

  rar->file.bytes_remaining -= rar->cstate.cur_block_size;
 } else if(rar->cstate.switch_multivolume) {



  rar->cstate.switch_multivolume = 0;
 }

 return ARCHIVE_OK;
}
