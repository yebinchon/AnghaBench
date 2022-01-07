
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int write_ptr; int last_block_start; int last_block_length; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int type; int block_start; int block_length; int channels; } ;
struct archive_read {int archive; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ENOMEM ;
 int FILTER_ARM ;
 int FILTER_DELTA ;
 struct filter_info* add_new_filter (struct rar5*) ;
 int archive_set_error (int *,int ,char*) ;
 struct rar5* get_context (struct archive_read*) ;
 int is_valid_filter_block_start (struct rar5*,int) ;
 scalar_t__ parse_filter_data (struct rar5*,int const*,int*) ;
 scalar_t__ read_bits_16 (struct rar5*,int const*,int*) ;
 scalar_t__ read_consume_bits (struct rar5*,int const*,int,int*) ;
 int skip_bits (struct rar5*,int) ;

__attribute__((used)) static int parse_filter(struct archive_read* ar, const uint8_t* p) {
 uint32_t block_start, block_length;
 uint16_t filter_type;
 struct rar5* rar = get_context(ar);


 if(ARCHIVE_OK != parse_filter_data(rar, p, &block_start))
  return ARCHIVE_EOF;

 if(ARCHIVE_OK != parse_filter_data(rar, p, &block_length))
  return ARCHIVE_EOF;

 if(ARCHIVE_OK != read_bits_16(rar, p, &filter_type))
  return ARCHIVE_EOF;

 filter_type >>= 13;
 skip_bits(rar, 3);





 if(block_length < 4 ||
     block_length > 0x400000 ||
     filter_type > FILTER_ARM ||
     !is_valid_filter_block_start(rar, block_start))
 {
  archive_set_error(&ar->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Invalid filter encountered");
  return ARCHIVE_FATAL;
 }


 struct filter_info* filt = add_new_filter(rar);
 if(filt == ((void*)0)) {
  archive_set_error(&ar->archive, ENOMEM,
      "Can't allocate memory for a filter descriptor.");
  return ARCHIVE_FATAL;
 }

 filt->type = filter_type;
 filt->block_start = rar->cstate.write_ptr + block_start;
 filt->block_length = block_length;

 rar->cstate.last_block_start = filt->block_start;
 rar->cstate.last_block_length = filt->block_length;




 if(filter_type == FILTER_DELTA) {
  int channels;

  if(ARCHIVE_OK != read_consume_bits(rar, p, 5, &channels))
   return ARCHIVE_EOF;

  filt->channels = channels + 1;
 }

 return ARCHIVE_OK;
}
