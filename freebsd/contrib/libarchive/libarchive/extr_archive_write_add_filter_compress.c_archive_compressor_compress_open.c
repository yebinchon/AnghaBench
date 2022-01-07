
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct private_data {size_t compressed_buffer_size; int* compressed; int max_maxcode; int out_count; int code_len; int compressed_offset; int hashtab; int first_free; int cur_maxcode; int checkpoint; scalar_t__ compress_ratio; scalar_t__ bit_offset; scalar_t__ bit_buf; scalar_t__ in_count; } ;
struct archive_write_filter {char* name; struct private_data* data; int free; int close; int write; TYPE_1__* archive; int next_filter; int code; } ;
struct TYPE_3__ {scalar_t__ magic; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_COMPRESS ;
 int ARCHIVE_OK ;
 scalar_t__ ARCHIVE_WRITE_MAGIC ;
 int CHECK_GAP ;
 int ENOMEM ;
 int FIRST ;
 int MAXCODE (int) ;
 int __archive_write_open_filter (int ) ;
 int archive_compressor_compress_close ;
 int archive_compressor_compress_free ;
 int archive_compressor_compress_write ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 size_t archive_write_get_bytes_per_block (TYPE_1__*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct private_data*) ;
 int* malloc (size_t) ;
 int memset (int ,int,int) ;

__attribute__((used)) static int
archive_compressor_compress_open(struct archive_write_filter *f)
{
 int ret;
 struct private_data *state;
 size_t bs = 65536, bpb;

 f->code = ARCHIVE_FILTER_COMPRESS;
 f->name = "compress";

 ret = __archive_write_open_filter(f->next_filter);
 if (ret != ARCHIVE_OK)
  return (ret);

 state = (struct private_data *)calloc(1, sizeof(*state));
 if (state == ((void*)0)) {
  archive_set_error(f->archive, ENOMEM,
      "Can't allocate data for compression");
  return (ARCHIVE_FATAL);
 }

 if (f->archive->magic == ARCHIVE_WRITE_MAGIC) {


  bpb = archive_write_get_bytes_per_block(f->archive);
  if (bpb > bs)
   bs = bpb;
  else if (bpb != 0)
   bs -= bs % bpb;
 }
 state->compressed_buffer_size = bs;
 state->compressed = malloc(state->compressed_buffer_size);

 if (state->compressed == ((void*)0)) {
  archive_set_error(f->archive, ENOMEM,
      "Can't allocate data for compression buffer");
  free(state);
  return (ARCHIVE_FATAL);
 }

 f->write = archive_compressor_compress_write;
 f->close = archive_compressor_compress_close;
 f->free = archive_compressor_compress_free;

 state->max_maxcode = 0x10000;
 state->in_count = 0;
 state->bit_buf = 0;
 state->bit_offset = 0;
 state->out_count = 3;
 state->compress_ratio = 0;
 state->checkpoint = CHECK_GAP;
 state->code_len = 9;
 state->cur_maxcode = MAXCODE(state->code_len);
 state->first_free = FIRST;

 memset(state->hashtab, 0xff, sizeof(state->hashtab));


 state->compressed[0] = 0x1f;
 state->compressed[1] = 0x9d;
 state->compressed[2] = 0x90;
 state->compressed_offset = 3;

 f->data = state;
 return (0);
}
