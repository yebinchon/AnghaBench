
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; } ;
struct private_b64encode {size_t bs; TYPE_1__ name; int mode; int encoded_buff; } ;
struct archive_write_filter {struct private_b64encode* data; TYPE_2__* archive; int next_filter; } ;
struct TYPE_5__ {scalar_t__ magic; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int __archive_write_open_filter (int ) ;
 int archive_set_error (TYPE_2__*,int ,char*) ;
 int * archive_string_ensure (int *,size_t) ;
 int archive_string_sprintf (int *,char*,int ,int ) ;
 size_t archive_write_get_bytes_per_block (TYPE_2__*) ;

__attribute__((used)) static int
archive_filter_b64encode_open(struct archive_write_filter *f)
{
 struct private_b64encode *state = (struct private_b64encode *)f->data;
 size_t bs = 65536, bpb;
 int ret;

 ret = __archive_write_open_filter(f->next_filter);
 if (ret != ARCHIVE_OK)
  return (ret);

 if (f->archive->magic == ARCHIVE_WRITE_MAGIC) {


  bpb = archive_write_get_bytes_per_block(f->archive);
  if (bpb > bs)
   bs = bpb;
  else if (bpb != 0)
   bs -= bs % bpb;
 }

 state->bs = bs;
 if (archive_string_ensure(&state->encoded_buff, bs + 512) == ((void*)0)) {
  archive_set_error(f->archive, ENOMEM,
      "Can't allocate data for b64encode buffer");
  return (ARCHIVE_FATAL);
 }

 archive_string_sprintf(&state->encoded_buff, "begin-base64 %o %s\n",
     state->mode, state->name.s);

 f->data = state;
 return (0);
}
