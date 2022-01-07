
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ total_in; scalar_t__ total_out; } ;


 scalar_t__ MODE_COMPRESS ;
 int assert (int) ;
 int lzma_get_progress (TYPE_1__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ opt_mode ;
 TYPE_1__* progress_strm ;

__attribute__((used)) static void
progress_pos(uint64_t *in_pos,
  uint64_t *compressed_pos, uint64_t *uncompressed_pos)
{
 uint64_t out_pos;
 lzma_get_progress(progress_strm, in_pos, &out_pos);


 assert(*in_pos <= progress_strm->total_in);


 assert(out_pos >= progress_strm->total_out);

 if (opt_mode == MODE_COMPRESS) {
  *compressed_pos = out_pos;
  *uncompressed_pos = *in_pos;
 } else {
  *compressed_pos = *in_pos;
  *uncompressed_pos = out_pos;
 }

 return;
}
